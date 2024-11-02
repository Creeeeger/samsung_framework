package com.android.systemui.biometrics;

import android.content.Context;
import com.android.systemui.util.concurrency.Execution;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsDisplayMode implements UdfpsDisplayModeProvider {
    public final AuthController authController;
    public final Context context;
    public Request currentRequest;
    public final Execution execution;
    public final UdfpsLogger logger;

    public UdfpsDisplayMode(Context context, Execution execution, AuthController authController, UdfpsLogger udfpsLogger) {
        this.context = context;
        this.execution = execution;
        this.authController = authController;
        this.logger = udfpsLogger;
    }
}
