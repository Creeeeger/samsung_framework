package com.android.systemui.qs.bar.soundcraft.view.noisecontrol;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.viewbinding.NoiseCancelingSwitchBarViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.SoundCraftViewBindingFactory;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseCancelingSwitchBarViewModel;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseCancelingSwitchBar {
    public final NoiseCancelingSwitchBarViewBinding binding;
    public final LifecycleOwner lifecycleOwner;
    public final NoiseCancelingSwitchBarViewModel viewModel;

    public NoiseCancelingSwitchBar(Context context, LifecycleOwner lifecycleOwner, NoiseCancelingSwitchBarViewModel noiseCancelingSwitchBarViewModel) {
        this.lifecycleOwner = lifecycleOwner;
        this.viewModel = noiseCancelingSwitchBarViewModel;
        int i = SoundCraftViewBindingFactory.$r8$clinit;
        NoiseCancelingSwitchBarViewBinding noiseCancelingSwitchBarViewBinding = new NoiseCancelingSwitchBarViewBinding(LayoutInflater.from(context).inflate(R.layout.soundcraft_noise_control_switch_bar_view, (ViewGroup) null, false));
        this.binding = noiseCancelingSwitchBarViewBinding;
        noiseCancelingSwitchBarViewBinding.root.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.noisecontrol.NoiseCancelingSwitchBar.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoiseCancelingSwitchBar.this.viewModel.onClick();
            }
        });
        noiseCancelingSwitchBarViewBinding.f7switch.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.noisecontrol.NoiseCancelingSwitchBar.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoiseCancelingSwitchBar.this.viewModel.onClick();
            }
        });
        noiseCancelingSwitchBarViewBinding.icon.setColorFilter(context.getResources().getColor(R.color.soundcraft_selected_icon_color, null));
        noiseCancelingSwitchBarViewModel.isSelected.observe(lifecycleOwner, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.noisecontrol.NoiseCancelingSwitchBar.3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Boolean bool = (Boolean) obj;
                NoiseCancelingSwitchBar noiseCancelingSwitchBar = NoiseCancelingSwitchBar.this;
                if (!Intrinsics.areEqual(bool, Boolean.valueOf(noiseCancelingSwitchBar.binding.f7switch.isChecked()))) {
                    noiseCancelingSwitchBar.binding.f7switch.setChecked(bool.booleanValue());
                }
            }
        });
        noiseCancelingSwitchBarViewModel.notifyChange();
    }
}
