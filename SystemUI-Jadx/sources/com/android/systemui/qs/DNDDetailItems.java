package com.android.systemui.qs;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.service.notification.ZenModeConfig;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.qs.tiles.DndTile;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import java.util.Calendar;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DNDDetailItems extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Adapter mAdapter;
    public Callback mCallback;
    public final Context mContext;
    public final H mHandler;
    public AutoSizingList mItemList;
    public final int[] mItemVisible;
    public Item[] mItems;
    public boolean mItemsVisible;
    public String mSelectedMenu;
    public String mTag;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Adapter extends BaseAdapter {
        public /* synthetic */ Adapter(DNDDetailItems dNDDetailItems, int i) {
            this();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            Item[] itemArr = DNDDetailItems.this.mItems;
            if (itemArr != null) {
                return itemArr.length;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return DNDDetailItems.this.mItems[i];
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int i2;
            DNDDetailItems dNDDetailItems = DNDDetailItems.this;
            final Item item = dNDDetailItems.mItems[i];
            if (view == null) {
                view = LayoutInflater.from(dNDDetailItems.mContext).inflate(R.layout.sec_qs_detail_dnd_item, viewGroup, false);
            }
            if (DNDDetailItems.this.mItemVisible[i] == 1) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            view.setVisibility(i2);
            CheckedTextView checkedTextView = (CheckedTextView) view.findViewById(R.id.check_text);
            TextView textView = (TextView) view.findViewById(R.id.check_summary);
            if (item.ctv == null) {
                if (item.stv == null) {
                    textView.setText((CharSequence) null);
                    item.stv = textView;
                }
                checkedTextView.setText(item.line1);
                item.ctv = checkedTextView;
                DNDDetailItems dNDDetailItems2 = DNDDetailItems.this;
                if (dNDDetailItems2.mCallback != null) {
                    if (item.line1.equalsIgnoreCase(dNDDetailItems2.mSelectedMenu)) {
                        ((DndTile.DndDetailAdapter) DNDDetailItems.this.mCallback).updateDetailItem(item, true);
                    } else {
                        ((DndTile.DndDetailAdapter) DNDDetailItems.this.mCallback).updateDetailItem(item, false);
                    }
                }
            }
            checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.DNDDetailItems.Adapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Callback callback = DNDDetailItems.this.mCallback;
                    if (callback != null) {
                        Item item2 = item;
                        DndTile.DndDetailAdapter dndDetailAdapter = (DndTile.DndDetailAdapter) callback;
                        Iterator it = dndDetailAdapter.mItemsList.iterator();
                        int i3 = 0;
                        while (it.hasNext()) {
                            Item item3 = (Item) it.next();
                            dndDetailAdapter.updateDetailItem(item3, false);
                            if (item3.line1 == item2.line1) {
                                DndTile.this.mDndMenuSelectedItem = i3;
                            }
                            i3++;
                        }
                        dndDetailAdapter.updateDetailItem(item2, true);
                        dndDetailAdapter.updateDndActivationItems(true);
                        DndTile dndTile = DndTile.this;
                        int i4 = dndTile.mDndMenuSelectedItem;
                        ZenModeController zenModeController = dndTile.mController;
                        if (i4 != 0) {
                            Context context = dndTile.mContext;
                            if (i4 != 1 && i4 != 2 && i4 != 3) {
                                if (i4 == 4 || i4 == 5) {
                                    ((ZenModeControllerImpl) zenModeController).setZen(1, null, "DndTile");
                                    Settings.Secure.putInt(context.getContentResolver(), "zen_duration", 0);
                                    dndTile.mDndMenuSummary = "";
                                }
                            } else {
                                int pow = DndTile.mZenOneHourSession * ((int) Math.pow(2.0d, i4 - 1));
                                Calendar calendar = Calendar.getInstance();
                                long j = (calendar.get(11) * 60) + calendar.get(12) + pow;
                                if (j >= 1440) {
                                    dndTile.mDndMenuSummary = context.getString(R.string.sec_dnd_detail_on_until_time_tomorrow, DndTile.getStringFromMillis(context, j - 1440));
                                } else {
                                    dndTile.mDndMenuSummary = context.getString(R.string.sec_dnd_detail_on_until_time_today, DndTile.getStringFromMillis(context, j));
                                }
                                ((ZenModeControllerImpl) zenModeController).setZen(1, ZenModeConfig.toTimeCondition(context, pow, ActivityManager.getCurrentUser(), true).id, "DndTile");
                                Settings.Secure.putInt(context.getContentResolver(), "zen_duration", pow);
                                dndTile.mLastDndDurationSelected = dndTile.mDndMenuSelectedItem;
                            }
                        } else {
                            ((ZenModeControllerImpl) zenModeController).setZen(0, null, "DndTile");
                            dndTile.mDndMenuSummary = "";
                        }
                        if (dndTile.mDndMenuSelectedItem != 0) {
                            dndTile.mIsSettingsUpdated = false;
                        }
                        SecQSDetail secQSDetail = DndTile.this.mSecQSDetail;
                        if (secQSDetail != null) {
                            secQSDetail.onSummaryUpdated();
                        }
                    }
                }
            });
            return view;
        }

        private Adapter() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public H() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            int i;
            int i2;
            int i3 = message.what;
            int i4 = 8;
            if (i3 == 1) {
                DNDDetailItems dNDDetailItems = DNDDetailItems.this;
                Item[] itemArr = (Item[]) message.obj;
                if (itemArr != null) {
                    int i5 = DNDDetailItems.$r8$clinit;
                    dNDDetailItems.getClass();
                    i2 = itemArr.length;
                } else {
                    i2 = 0;
                }
                AutoSizingList autoSizingList = dNDDetailItems.mItemList;
                if (i2 != 0) {
                    i4 = 0;
                }
                autoSizingList.setVisibility(i4);
                dNDDetailItems.mItems = itemArr;
                dNDDetailItems.mAdapter.notifyDataSetChanged();
                return;
            }
            if (i3 == 2) {
                DNDDetailItems.this.mCallback = (Callback) message.obj;
                return;
            }
            if (i3 == 3) {
                DNDDetailItems dNDDetailItems2 = DNDDetailItems.this;
                if (message.arg1 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (dNDDetailItems2.mItemsVisible != z) {
                    dNDDetailItems2.mItemsVisible = z;
                    for (int i6 = 0; i6 < dNDDetailItems2.mItemList.getChildCount(); i6++) {
                        View childAt = dNDDetailItems2.mItemList.getChildAt(i6);
                        if (dNDDetailItems2.mItemVisible[i6] == 1) {
                            i = 0;
                        } else {
                            i = 8;
                        }
                        childAt.setVisibility(i);
                    }
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Item {
        public String line1;
        public CheckedTextView ctv = null;
        public TextView stv = null;
    }

    public DNDDetailItems(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new H();
        this.mAdapter = new Adapter(this, 0);
        this.mItemsVisible = true;
        this.mItemVisible = new int[]{1, 1, 1, 1, 1, 0};
        this.mContext = context;
        this.mTag = "DNDDetailItems";
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(this.mTag, "onAttachedToWindow");
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d(this.mTag, "onDetachedFromWindow");
        this.mCallback = null;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        super.onFinishInflate();
        AutoSizingList autoSizingList = (AutoSizingList) findViewById(android.R.id.list);
        this.mItemList = autoSizingList;
        autoSizingList.setAdapter(this.mAdapter);
    }

    public final void updateQSPanelOptions(int i) {
        int[] iArr = this.mItemVisible;
        iArr[2] = i;
        iArr[1] = i;
        iArr[4] = i;
        iArr[3] = i;
        iArr[5] = 1 - i;
    }
}
