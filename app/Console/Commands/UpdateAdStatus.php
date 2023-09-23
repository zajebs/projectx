<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Carbon;
use Modules\Ad\Entities\Ad;

class UpdateAdStatus extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'ads:update_status';


    /**
     * The console command description.
     *
     * @var string
     */

    protected $description = 'Update ad status after the validity period has passed';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $now = Carbon::now();

        // Get all ads that have passed their validity and still have the status "active".
        $expiredAds = Ad::where('status', '=', 'active')
            ->where('validity', '<=', $now)
            ->get();

        foreach ($expiredAds as $ad) {
            $ad->status = 'expired';
            $ad->save();
        }

        return 'Ad statuses updated successfully.';

    }
}
