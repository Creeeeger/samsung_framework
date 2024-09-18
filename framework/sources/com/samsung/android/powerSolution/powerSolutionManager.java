package com.samsung.android.powerSolution;

import android.util.Log;

/* loaded from: classes5.dex */
public class powerSolutionManager {
    private static final String TAG = "powerSolutionManager";
    private IpowerSolution service;

    public powerSolutionManager(IpowerSolution service) {
        if (service == null) {
            Log.d(TAG, "IStartService is null");
        } else {
            Log.d(TAG, "powerSolutionManager ++");
            this.service = service;
        }
    }

    public IpowerSolution getMyService() {
        return this.service;
    }
}
