package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SwitchCompat;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseCancelingSwitchBarViewBinding {
    public final ImageView icon;
    public final LinearLayout root;

    /* renamed from: switch, reason: not valid java name */
    public final SwitchCompat f7switch;

    public NoiseCancelingSwitchBarViewBinding(View view) {
        this.root = (LinearLayout) view.findViewById(R.id.item_root);
        this.icon = (ImageView) view.findViewById(R.id.item_icon);
        this.f7switch = (SwitchCompat) view.findViewById(R.id.item_switch);
    }
}
