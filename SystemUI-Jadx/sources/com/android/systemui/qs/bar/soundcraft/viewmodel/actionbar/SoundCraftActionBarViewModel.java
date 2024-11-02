package com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.util.Log;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.interfaces.connectivity.BluetoothDeviceManager;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import dagger.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundCraftActionBarViewModel extends BaseViewModel {
    public final BluetoothDeviceManager bluetoothDeviceManager;
    public final Lazy qsPanelControllerLazy;
    public final Lazy soundCraftAdapter;
    public final kotlin.Lazy title$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel$title$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String str;
            BluetoothDevice activeDevice = SoundCraftActionBarViewModel.this.bluetoothDeviceManager.getActiveDevice();
            if (activeDevice != null) {
                str = activeDevice.getName();
            } else {
                str = null;
            }
            if (str == null) {
                str = "";
            }
            return new MutableLiveData(str);
        }
    });

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

    public SoundCraftActionBarViewModel(Context context, Lazy lazy, BluetoothDeviceManager bluetoothDeviceManager, Lazy lazy2) {
        this.qsPanelControllerLazy = lazy;
        this.bluetoothDeviceManager = bluetoothDeviceManager;
        this.soundCraftAdapter = lazy2;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        String str;
        MutableLiveData mutableLiveData = (MutableLiveData) this.title$delegate.getValue();
        BluetoothDevice activeDevice = this.bluetoothDeviceManager.getActiveDevice();
        if (activeDevice != null) {
            str = activeDevice.getName();
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        Log.d("SoundCraft.SoundCraftActionBarViewModel", "btName=".concat(str));
        mutableLiveData.setValue(str);
    }
}
