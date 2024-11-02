package com.android.systemui.qs.bar.micmode;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.qs.AutoSizingList;
import com.android.systemui.qs.bar.MicModeDetailAdapter;
import com.android.systemui.qs.bar.micmode.MicModeDetailItems;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.presence.ServiceTuple;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MicModeDetailItems extends FrameLayout {
    public final Adapter adapter;
    public final AudioManager audioManager;
    public Callback callback;
    public final Context context;
    public final H handler;
    public AutoSizingList itemList;
    public final List items;
    public int selectedMode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Adapter extends BaseAdapter {
        public Adapter() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return ((ArrayList) MicModeDetailItems.this.items).size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return (Item) ((ArrayList) MicModeDetailItems.this.items).get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            boolean z;
            Item item;
            final Item item2 = (Item) ((ArrayList) MicModeDetailItems.this.items).get(i);
            boolean z2 = false;
            if (view == null) {
                view = LayoutInflater.from(MicModeDetailItems.this.context).inflate(R.layout.sec_qs_detail_mic_mode_item, viewGroup, false);
            }
            CheckedTextView checkedTextView = (CheckedTextView) view.findViewById(R.id.check_text);
            if (item2.ctv == null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                item = item2;
            } else {
                item = null;
            }
            if (item != null) {
                MicModeDetailItems micModeDetailItems = MicModeDetailItems.this;
                checkedTextView.setText(item.getText());
                item.ctv = checkedTextView;
                Callback callback = micModeDetailItems.callback;
                if (callback != null) {
                    if (item.getMicMode() == micModeDetailItems.selectedMode) {
                        z2 = true;
                    }
                    ((MicModeDetailAdapter) callback).updateDetailItem(item2, z2);
                }
            }
            final MicModeDetailItems micModeDetailItems2 = MicModeDetailItems.this;
            view.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.micmode.MicModeDetailItems$Adapter$getView$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MicModeDetailItems.Callback callback2 = MicModeDetailItems.this.callback;
                    if (callback2 != null) {
                        MicModeDetailItems.Item item3 = item2;
                        MicModeDetailAdapter micModeDetailAdapter = (MicModeDetailAdapter) callback2;
                        Iterator it = micModeDetailAdapter.mItemsList.iterator();
                        while (it.hasNext()) {
                            micModeDetailAdapter.updateDetailItem((MicModeDetailItems.Item) it.next(), false);
                        }
                        micModeDetailAdapter.updateDetailItem(item3, true);
                    }
                    if (MicModeDetailItems.this.selectedMode != item2.getMicMode()) {
                        MicModeDetailItems.this.selectedMode = item2.getMicMode();
                        MicModeDetailItems micModeDetailItems3 = MicModeDetailItems.this;
                        int micMode = item2.getMicMode();
                        micModeDetailItems3.getClass();
                        Log.d("MicModeDetailItems", "set mic mode to " + micMode);
                        micModeDetailItems3.audioManager.setMicInputControlMode(micMode);
                        MicModeDetailItems micModeDetailItems4 = MicModeDetailItems.this;
                        String loggingId = item2.getLoggingId();
                        String loggingValue = item2.getLoggingValue();
                        micModeDetailItems4.context.getSharedPreferences("micmode_pref", 0).edit().putString(loggingId, loggingValue).apply();
                        String str = SystemUIAnalytics.sCurrentScreenID;
                        if (Intrinsics.areEqual("ASMM1031", loggingId)) {
                            loggingValue = KeyAttributes$$ExternalSyntheticOutline0.m("VOICE_", loggingValue);
                        }
                        SystemUIAnalytics.sendEventLog(str, "ASMM1029", loggingValue);
                    }
                }
            });
            return view;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public H() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i;
            int i2 = message.what;
            if (i2 == 1) {
                MicModeDetailItems micModeDetailItems = MicModeDetailItems.this;
                ArrayList arrayList = (ArrayList) message.obj;
                ((ArrayList) micModeDetailItems.items).clear();
                int size = arrayList.size();
                AutoSizingList autoSizingList = micModeDetailItems.itemList;
                if (autoSizingList == null) {
                    autoSizingList = null;
                }
                if (size == 0) {
                    i = 8;
                } else {
                    i = 0;
                }
                autoSizingList.setVisibility(i);
                ((ArrayList) micModeDetailItems.items).addAll(arrayList);
                micModeDetailItems.adapter.notifyDataSetChanged();
                return;
            }
            if (i2 == 2) {
                MicModeDetailItems.this.callback = (Callback) message.obj;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class Item {
        public CheckedTextView ctv;

        public abstract String getLoggingId();

        public abstract String getLoggingValue();

        public abstract int getMicMode();

        public abstract String getText();
    }

    static {
        new Companion(null);
    }

    public MicModeDetailItems(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = context;
        this.handler = new H();
        this.adapter = new Adapter();
        this.items = new ArrayList();
        this.audioManager = (AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d("MicModeDetailItems", "onAttachedToWindow");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d("MicModeDetailItems", "onDetachedFromWindow");
        this.callback = null;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        AutoSizingList autoSizingList = (AutoSizingList) findViewById(android.R.id.list);
        this.itemList = autoSizingList;
        autoSizingList.setAdapter(this.adapter);
    }
}
