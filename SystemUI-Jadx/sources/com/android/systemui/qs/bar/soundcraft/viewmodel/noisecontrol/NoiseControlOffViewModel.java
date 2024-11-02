package com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseControlOffViewModel extends NoiseControlIconViewModel {
    public final BluetoothDeviceManager bluetoothDeviceManager;
    public final Context context;
    public final ModelProvider modelProvider;

    public NoiseControlOffViewModel(Context context, ModelProvider modelProvider, BluetoothDeviceManager bluetoothDeviceManager) {
        this.context = context;
        this.modelProvider = modelProvider;
        this.bluetoothDeviceManager = bluetoothDeviceManager;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlIconViewModel
    public final BluetoothDeviceManager getBluetoothDeviceManager() {
        return this.bluetoothDeviceManager;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlIconViewModel
    public final int getDrawableOff() {
        return R.drawable.soundcraft_ic_buds3_anc_off_unselelcted;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlIconViewModel
    public final int getDrawableOn() {
        return R.drawable.soundcraft_ic_buds3_anc_off;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlIconViewModel
    public final String getItemName() {
        return this.context.getResources().getString(R.string.sound_craft_noise_control_off);
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlIconViewModel
    public final ModelProvider getModelProvider() {
        return this.modelProvider;
    }
}
