package com.android.systemui.qs.bar.soundcraft.viewmodel.wearable;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WearableLinkBoxViewModel extends BaseViewModel {
    public final BluetoothDeviceManager bluetoothDeviceManager;
    public final Context context;
    public final LocalBluetoothManager localBtManager;

    public WearableLinkBoxViewModel(Context context, ModelProvider modelProvider, BluetoothDeviceManager bluetoothDeviceManager, LocalBluetoothManager localBluetoothManager) {
        this.context = context;
        this.bluetoothDeviceManager = bluetoothDeviceManager;
        this.localBtManager = localBluetoothManager;
        new MutableLiveData();
    }
}
