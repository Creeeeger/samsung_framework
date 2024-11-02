package com.android.systemui.media;

import com.android.systemui.media.SecMediaHost;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SecMediaHost$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SecMediaHost f$0;

    public /* synthetic */ SecMediaHost$$ExternalSyntheticLambda0(SecMediaHost secMediaHost, int i) {
        this.$r8$classId = i;
        this.f$0 = secMediaHost;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SecMediaHost secMediaHost = this.f$0;
                secMediaHost.getClass();
                SecMediaHost.iteratePlayers((SecMediaPlayerData) obj, new SecMediaHost$$ExternalSyntheticLambda0(secMediaHost, 5));
                return;
            case 1:
                this.f$0.getClass();
                SecMediaHost.iteratePlayers((SecMediaPlayerData) obj, new SecMediaHost$$ExternalSyntheticLambda14(0));
                return;
            case 2:
                this.f$0.mVisibilityListeners.add((SecMediaHost.MediaPanelVisibilityListener) obj);
                return;
            case 3:
                this.f$0.mVisibilityListeners.remove((SecMediaHost.MediaPanelVisibilityListener) obj);
                return;
            case 4:
                this.f$0.onMediaVisibilityChanged((Boolean) obj);
                return;
            case 5:
                ((SecMediaControlPanel) obj).setListening(this.f$0.mLocalListening);
                return;
            default:
                ((SecMediaControlPanel) obj).mToggleCallback = this.f$0.mPlayerBarExpandHelper.expandCallback;
                return;
        }
    }
}
