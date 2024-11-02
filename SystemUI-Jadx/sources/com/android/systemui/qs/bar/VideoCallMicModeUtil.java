package com.android.systemui.qs.bar;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AbsActionBarView$$ExternalSyntheticOutline0;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.qs.SecQSPanelResourcePicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VideoCallMicModeUtil {
    public final Context context;
    public final SecQSPanelResourcePicker resourcePicker;

    public VideoCallMicModeUtil(Context context, SecQSPanelResourcePicker secQSPanelResourcePicker) {
        this.context = context;
        this.resourcePicker = secQSPanelResourcePicker;
    }

    public final int getPixelSize(int i) {
        return this.context.getResources().getDimensionPixelSize(i);
    }

    public final VideoCallMicModeResources getResources() {
        int pixelSize;
        this.resourcePicker.getClass();
        Context context = this.context;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.large_tile_temp_icon_margin_start);
        int tileIconSize = SecQSPanelResourcePicker.getTileIconSize(context);
        int pixelSize2 = getPixelSize(R.dimen.video_call_effects_mic_mode_icon_size);
        int m = AbsActionBarView$$ExternalSyntheticOutline0.m(tileIconSize, pixelSize2, 2, dimensionPixelSize);
        if (QpRune.QUICK_TABLET) {
            pixelSize = 0;
        } else {
            pixelSize = getPixelSize(R.dimen.video_call_effects_mic_mode_sub_text_start_padding);
        }
        return new VideoCallMicModeResources(dimensionPixelSize, pixelSize2, m, pixelSize, getPixelSize(R.dimen.video_call_effects_mic_mode_text_container_start_padding), getPixelSize(R.dimen.video_call_effects_mic_mode_text_container_end_padding), (getPixelSize(R.dimen.large_tile_temp_between_margin) + SecQSPanelResourcePicker.getPanelWidth(context)) / 4, getPixelSize(R.dimen.large_tile_temp_between_margin), getPixelSize(R.dimen.video_call_effects_mic_mode_divider_padding));
    }

    public final View inflate(int i, ViewGroup viewGroup, boolean z) {
        View inflate = LayoutInflater.from(this.context).inflate(i, viewGroup, false);
        if (inflate != null) {
            if (z) {
                inflate.setBackground(inflate.getContext().getDrawable(R.drawable.sec_large_button_ripple_background));
                return inflate;
            }
            return inflate;
        }
        return null;
    }
}
