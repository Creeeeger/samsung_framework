package com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.model.NoiseControl;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseToggleViewModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseCancelingSwitchBarViewModel extends BaseToggleViewModel {
    public final BluetoothDeviceManager bluetoothDeviceManager;
    public final ModelProvider modelProvider;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public NoiseCancelingSwitchBarViewModel(Context context, ModelProvider modelProvider, BluetoothDeviceManager bluetoothDeviceManager) {
        this.modelProvider = modelProvider;
        this.bluetoothDeviceManager = bluetoothDeviceManager;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        Set noiseControlsList = this.modelProvider.budsInfo.getNoiseControlsList();
        if (noiseControlsList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : noiseControlsList) {
                if (Intrinsics.areEqual(((NoiseControl) obj).getName(), this.bluetoothDeviceManager.getActiveNoiseControlTitle())) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.isSelected.setValue(Boolean.valueOf(((NoiseControl) it.next()).getState()));
            }
        }
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseToggleViewModel
    public final void onClick() {
        String noiseControlOffTitle;
        boolean z;
        Set noiseControlsList = this.modelProvider.budsInfo.getNoiseControlsList();
        MutableLiveData mutableLiveData = this.isSelected;
        BluetoothDeviceManager bluetoothDeviceManager = this.bluetoothDeviceManager;
        boolean z2 = false;
        if (noiseControlsList != null) {
            ArrayList<NoiseControl> arrayList = new ArrayList();
            for (Object obj : noiseControlsList) {
                if (Intrinsics.areEqual(((NoiseControl) obj).getName(), bluetoothDeviceManager.getActiveNoiseControlTitle())) {
                    arrayList.add(obj);
                }
            }
            loop1: while (true) {
                z = false;
                for (NoiseControl noiseControl : arrayList) {
                    Boolean bool = (Boolean) mutableLiveData.getValue();
                    if (bool != null) {
                        if (!bool.booleanValue()) {
                            z = true;
                        }
                    } else if (!noiseControl.getState()) {
                        z = true;
                    }
                }
            }
            z2 = z;
        }
        if (z2) {
            noiseControlOffTitle = bluetoothDeviceManager.getActiveNoiseControlTitle();
        } else {
            noiseControlOffTitle = bluetoothDeviceManager.getNoiseControlOffTitle();
        }
        bluetoothDeviceManager.updateNoiseControlList(new NoiseControl(noiseControlOffTitle, true));
        mutableLiveData.setValue(Boolean.valueOf(z2));
    }
}
