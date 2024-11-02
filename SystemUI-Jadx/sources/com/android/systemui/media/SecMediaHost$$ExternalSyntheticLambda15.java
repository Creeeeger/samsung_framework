package com.android.systemui.media;

import android.content.res.Configuration;
import android.widget.ImageView;
import com.android.systemui.media.SecMediaHost;
import com.android.systemui.util.ConfigurationState;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SecMediaHost$$ExternalSyntheticLambda15 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Comparable f$0;

    public /* synthetic */ SecMediaHost$$ExternalSyntheticLambda15(Comparable comparable, int i) {
        this.$r8$classId = i;
        this.f$0 = comparable;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ImageView imageView;
        int i;
        switch (this.$r8$classId) {
            case 0:
                Configuration configuration = (Configuration) this.f$0;
                SecMediaControlPanel secMediaControlPanel = (SecMediaControlPanel) obj;
                secMediaControlPanel.updateWidth();
                ConfigurationState configurationState = secMediaControlPanel.mLastConfigurationState;
                if (configurationState.needToUpdate(configuration)) {
                    configurationState.update(configuration);
                    SecPlayerViewHolder secPlayerViewHolder = secMediaControlPanel.mViewHolder;
                    boolean z = false;
                    if (secPlayerViewHolder != null && (imageView = secPlayerViewHolder.expandIcon) != null) {
                        if (secMediaControlPanel.expandIconNeedToShow() && !secMediaControlPanel.mIsEmptyPlayer) {
                            i = 0;
                        } else {
                            i = 4;
                        }
                        imageView.setVisibility(i);
                    }
                    secMediaControlPanel.calculateSongTitleWidth();
                    secMediaControlPanel.updateExpandAnimator();
                    if (secMediaControlPanel.mFraction != 0.0f) {
                        z = true;
                    }
                    secMediaControlPanel.mExpanded = z;
                    return;
                }
                return;
            default:
                ((SecMediaHost.MediaPanelVisibilityListener) obj).onMediaVisibilityChanged(((Boolean) this.f$0).booleanValue());
                return;
        }
    }
}
