package com.android.systemui.media.dialog;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.CoreStartable;
import com.android.systemui.statusbar.CommandQueue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaOutputSwitcherDialogUI implements CoreStartable, CommandQueue.Callbacks {
    public final CommandQueue mCommandQueue;
    public final MediaOutputDialogFactory mMediaOutputDialogFactory;

    public MediaOutputSwitcherDialogUI(Context context, CommandQueue commandQueue, MediaOutputDialogFactory mediaOutputDialogFactory) {
        this.mCommandQueue = commandQueue;
        this.mMediaOutputDialogFactory = mediaOutputDialogFactory;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showMediaOutputSwitcher(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mMediaOutputDialogFactory.create(str, null);
        } else {
            Log.e("MediaOutputSwitcherDialogUI", "Unable to launch media output dialog. Package name is empty.");
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        this.mCommandQueue.addCallback((CommandQueue.Callbacks) this);
    }
}
