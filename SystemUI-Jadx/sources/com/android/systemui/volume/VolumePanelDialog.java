package com.android.systemui.volume;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.recyclerview.widget.RecyclerView;
import com.android.settingslib.bluetooth.LocalBluetoothProfileManager;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelDialog extends SystemUIDialog implements LifecycleOwner {
    public final ActivityStarter mActivityStarter;
    public final Handler mHandler;
    public final LifecycleRegistry mLifecycleRegistry;
    public final HashSet mLoadedSlices;
    public LocalBluetoothProfileManager mProfileManager;
    public final Map mSliceLiveData;
    public boolean mSlicesReadyToLoad;
    public RecyclerView mVolumePanelSlices;
    public VolumePanelSlicesAdapter mVolumePanelSlicesAdapter;
    public static final Uri REMOTE_MEDIA_SLICE_URI = new Uri.Builder().scheme("content").authority("com.android.settings.slices").appendPath("action").appendPath("remote_media").build();
    public static final Uri VOLUME_MEDIA_URI = new Uri.Builder().scheme("content").authority("com.android.settings.slices").appendPath("action").appendPath("media_volume").build();
    public static final Uri MEDIA_OUTPUT_INDICATOR_SLICE_URI = new Uri.Builder().scheme("content").authority("com.android.settings.slices").appendPath("intent").appendPath("media_output_indicator").build();
    public static final Uri VOLUME_CALL_URI = new Uri.Builder().scheme("content").authority("com.android.settings.slices").appendPath("action").appendPath("call_volume").build();
    public static final Uri VOLUME_RINGER_URI = new Uri.Builder().scheme("content").authority("com.android.settings.slices").appendPath("action").appendPath("ring_volume").build();
    public static final Uri VOLUME_ALARM_URI = new Uri.Builder().scheme("content").authority("com.android.settings.slices").appendPath("action").appendPath("alarm_volume").build();

    public VolumePanelDialog(Context context, ActivityStarter activityStarter, boolean z) {
        super(context);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mSliceLiveData = new LinkedHashMap();
        this.mLoadedSlices = new HashSet();
        this.mActivityStarter = activityStarter;
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        if (!z) {
            getWindow().setType(2038);
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        return this.mLifecycleRegistry;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x010e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.android.systemui.statusbar.phone.SystemUIDialog, android.app.AlertDialog, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumePanelDialog.onCreate(android.os.Bundle):void");
    }

    public final boolean removeSliceLiveData(Uri uri) {
        boolean z = false;
        if (!uri.equals(MEDIA_OUTPUT_INDICATOR_SLICE_URI)) {
            Log.d("VolumePanelDialog", "remove uri: " + uri);
            if (this.mSliceLiveData.remove(uri) != null) {
                z = true;
            }
            VolumePanelSlicesAdapter volumePanelSlicesAdapter = this.mVolumePanelSlicesAdapter;
            if (volumePanelSlicesAdapter != null) {
                ArrayList arrayList = new ArrayList(((LinkedHashMap) this.mSliceLiveData).values());
                ArrayList arrayList2 = (ArrayList) volumePanelSlicesAdapter.mSliceLiveData;
                arrayList2.clear();
                arrayList2.addAll(arrayList);
                volumePanelSlicesAdapter.notifyDataSetChanged();
            }
        }
        return z;
    }

    public final void setupAdapterWhenReady() {
        if (this.mLoadedSlices.size() == this.mSliceLiveData.size() && !this.mSlicesReadyToLoad) {
            this.mSlicesReadyToLoad = true;
            VolumePanelSlicesAdapter volumePanelSlicesAdapter = new VolumePanelSlicesAdapter(this, this.mSliceLiveData);
            this.mVolumePanelSlicesAdapter = volumePanelSlicesAdapter;
            volumePanelSlicesAdapter.mOnSliceActionListener = new VolumePanelDialog$$ExternalSyntheticLambda4(this);
            if (this.mSliceLiveData.size() < 4) {
                this.mVolumePanelSlices.setMinimumHeight(0);
            }
            this.mVolumePanelSlices.setAdapter(this.mVolumePanelSlicesAdapter);
        }
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void start() {
        Log.d("VolumePanelDialog", "onStart");
        this.mLifecycleRegistry.setCurrentState(Lifecycle.State.STARTED);
        this.mLifecycleRegistry.setCurrentState(Lifecycle.State.RESUMED);
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public final void stop() {
        Log.d("VolumePanelDialog", "onStop");
        this.mLifecycleRegistry.setCurrentState(Lifecycle.State.DESTROYED);
    }
}
