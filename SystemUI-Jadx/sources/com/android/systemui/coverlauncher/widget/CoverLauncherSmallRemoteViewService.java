package com.android.systemui.coverlauncher.widget;

import android.content.Intent;
import android.widget.RemoteViewsService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverLauncherSmallRemoteViewService extends RemoteViewsService {
    @Override // android.widget.RemoteViewsService
    public final RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new CoverLauncherRemoteViewsFactory(this, intent);
    }
}
