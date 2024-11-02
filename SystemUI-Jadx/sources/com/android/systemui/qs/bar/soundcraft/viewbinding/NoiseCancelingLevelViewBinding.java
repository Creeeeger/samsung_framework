package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseCancelingLevelViewBinding {
    public final SeekBar noiseCancelingSeekbar;
    public final LinearLayout root;

    public NoiseCancelingLevelViewBinding(View view) {
        this.root = (LinearLayout) view.findViewById(R.id.item_root);
        this.noiseCancelingSeekbar = (SeekBar) view.findViewById(R.id.noise_canceling_seekbar);
    }
}
