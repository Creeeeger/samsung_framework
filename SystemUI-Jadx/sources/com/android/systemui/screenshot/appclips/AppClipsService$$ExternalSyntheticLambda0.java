package com.android.systemui.screenshot.appclips;

import android.os.IBinder;
import com.android.internal.statusbar.IAppClipsService;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class AppClipsService$$ExternalSyntheticLambda0 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return IAppClipsService.Stub.asInterface((IBinder) obj);
    }
}
