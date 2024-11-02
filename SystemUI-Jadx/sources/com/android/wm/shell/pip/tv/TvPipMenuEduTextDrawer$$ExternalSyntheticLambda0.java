package com.android.wm.shell.pip.tv;

import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TvPipMenuEduTextDrawer f$0;

    public /* synthetic */ TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0(TvPipMenuEduTextDrawer tvPipMenuEduTextDrawer, int i) {
        this.$r8$classId = i;
        this.f$0 = tvPipMenuEduTextDrawer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                TvPipMenuEduTextDrawer.$r8$lambda$2GDlmZOpGSSk_mkyIVJnZDt_4Mk(this.f$0);
                return;
            default:
                TvPipMenuEduTextDrawer tvPipMenuEduTextDrawer = this.f$0;
                tvPipMenuEduTextDrawer.getClass();
                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 35922217, 4, "%s: startScrollEduText(), repeat=%d", "TvPipMenuEduTextDrawer", Long.valueOf(tvPipMenuEduTextDrawer.mEduTextView.getMarqueeRepeatLimit()));
                }
                tvPipMenuEduTextDrawer.mEduTextView.setSelected(true);
                return;
        }
    }
}
