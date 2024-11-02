package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.R;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSDetailItems extends FrameLayout {
    public static final boolean DEBUG = Log.isLoggable("QSDetailItems", 3);
    public final Adapter mAdapter;
    public Callback mCallback;
    public final Context mContext;
    public View mEmpty;
    public ImageView mEmptyIcon;
    public TextView mEmptyText;
    public final H mHandler;
    public AutoSizingList mItemList;
    public Item[] mItems;
    public boolean mItemsVisible;
    public final int mQsDetailIconOverlaySize;
    public String mTag;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Adapter extends BaseAdapter {
        public /* synthetic */ Adapter(QSDetailItems qSDetailItems, int i) {
            this();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            Item[] itemArr = QSDetailItems.this.mItems;
            if (itemArr != null) {
                return itemArr.length;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return QSDetailItems.this.mItems[i];
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int i2;
            int i3;
            CharSequence charSequence;
            int i4;
            int i5;
            QSDetailItems qSDetailItems = QSDetailItems.this;
            final Item item = qSDetailItems.mItems[i];
            if (view == null) {
                view = LayoutInflater.from(qSDetailItems.mContext).inflate(R.layout.qs_detail_item, viewGroup, false);
            }
            if (QSDetailItems.this.mItemsVisible) {
                i2 = 0;
            } else {
                i2 = 4;
            }
            view.setVisibility(i2);
            TextView textView = (TextView) view.findViewById(android.R.id.title);
            TextView textView2 = (TextView) view.findViewById(android.R.id.summary);
            ImageView imageView = (ImageView) view.findViewById(android.R.id.icon);
            if (item.iconVisibility) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            int i6 = item.itemPaddingAboveBelow;
            if (i6 != 0) {
                view.setPadding(0, i6, 0, i6);
            }
            float f = item.line1textSize;
            if (f != 0.0f) {
                textView.setTextSize(0, f);
            }
            float f2 = item.line2textSize;
            if (f2 != 0.0f) {
                textView2.setTextSize(0, f2);
            }
            imageView.setImageResource(item.iconResId);
            imageView.getOverlay().clear();
            Drawable drawable = item.overlay;
            if (drawable != null) {
                if (item.updateIconSize) {
                    ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                    int dimensionPixelSize = QSDetailItems.this.mContext.getResources().getDimensionPixelSize(R.dimen.qs_detail_icon_overlay_bluetooth_size);
                    layoutParams.width = dimensionPixelSize;
                    layoutParams.height = dimensionPixelSize;
                    imageView.setLayoutParams(layoutParams);
                    item.overlay.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                } else {
                    int i7 = QSDetailItems.this.mQsDetailIconOverlaySize;
                    drawable.setBounds(0, 0, i7, i7);
                }
                imageView.getOverlay().add(item.overlay);
                item.overlay.setTint(QSDetailItems.this.mContext.getResources().getColor(R.color.qs_detail_icon_tint_color));
            }
            TextView textView3 = (TextView) view.findViewById(android.R.id.title);
            textView3.setText(item.line1);
            boolean z = item.isInProgress;
            int i8 = R.color.qs_detail_active_item_name;
            if (z) {
                textView3.setTextColor(QSDetailItems.this.mContext.getResources().getColor(R.color.qs_detail_active_item_name));
                textView3.setAlpha(QSDetailItems.this.mContext.getResources().getFloat(R.integer.qs_detail_item_title_progress_alpha));
            } else {
                Resources resources = QSDetailItems.this.mContext.getResources();
                if (!item.isActive) {
                    i8 = R.color.qs_detail_item_name;
                }
                textView3.setTextColor(resources.getColor(i8));
                textView3.setAlpha(1.0f);
            }
            TextView textView4 = (TextView) view.findViewById(android.R.id.summary);
            int i9 = 1;
            boolean z2 = !TextUtils.isEmpty(item.line2);
            if (!z2) {
                i9 = 2;
            }
            textView3.setMaxLines(i9);
            if (z2) {
                i3 = 0;
            } else {
                i3 = 8;
            }
            textView4.setVisibility(i3);
            if (z2) {
                charSequence = item.line2;
            } else {
                charSequence = null;
            }
            textView4.setText(charSequence);
            Resources resources2 = QSDetailItems.this.mContext.getResources();
            if (item.isActive) {
                i4 = R.color.qs_detail_item_summary_active_text_color;
            } else {
                i4 = R.color.qs_detail_item_summary_text_color;
            }
            textView4.setTextColor(resources2.getColor(i4));
            if (!item.isClickable) {
                view.setBackground(null);
            }
            if (item.isDisabled) {
                Log.i("QSDetailItems", "getView(): item is disabled");
                item.isClickable = false;
                textView3.setTextColor(QSDetailItems.this.mContext.getResources().getColor(R.color.Hotspot_live_disable_title_color));
                textView4.setTextColor(QSDetailItems.this.mContext.getResources().getColor(R.color.Hotspot_live_disable_summary_color));
                imageView.setColorFilter(QSDetailItems.this.mContext.getResources().getColor(R.color.Hotspot_live_disable_icon_tint_color));
            } else {
                imageView.setColorFilter((ColorFilter) null);
            }
            Typeface create = Typeface.create("sec", 0);
            if (item.isActive) {
                i5 = VolteConstants.ErrorCode.BUSY_EVERYWHERE;
            } else {
                i5 = 400;
            }
            textView3.setTypeface(Typeface.create(create, i5, false));
            view.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.QSDetailItems.Adapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if (QSDetailItems.this.mCallback != null) {
                        TextView textView5 = (TextView) view2.findViewById(android.R.id.title);
                        if (textView5 != null && item.isClickable) {
                            textView5.setTextColor(QSDetailItems.this.getContext().getColor(R.color.sec_qs_detail_secondary_text_color));
                            textView5.setAlpha(QSDetailItems.this.mContext.getResources().getFloat(R.integer.qs_detail_item_title_progress_alpha));
                        }
                        QSDetailItems.this.mCallback.onDetailItemClick(item);
                    }
                }
            });
            ImageView imageView2 = (ImageView) view.findViewById(android.R.id.icon2);
            int i10 = item.icon2;
            if (i10 != -1) {
                imageView2.setVisibility(0);
                imageView2.setImageResource(i10);
                imageView2.setClickable(false);
            } else {
                imageView2.setVisibility(8);
            }
            return view;
        }

        private Adapter() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        void onDetailItemClick(Item item);
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
            int i2;
            int i3;
            int i4 = message.what;
            int i5 = 0;
            boolean z = true;
            if (i4 == 1) {
                QSDetailItems qSDetailItems = QSDetailItems.this;
                Item[] itemArr = (Item[]) message.obj;
                if (itemArr != null) {
                    boolean z2 = QSDetailItems.DEBUG;
                    qSDetailItems.getClass();
                    i2 = itemArr.length;
                } else {
                    i2 = 0;
                }
                View view = qSDetailItems.mEmpty;
                if (i2 == 0) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
                view.setVisibility(i3);
                AutoSizingList autoSizingList = qSDetailItems.mItemList;
                if (i2 == 0) {
                    i5 = 8;
                }
                autoSizingList.setVisibility(i5);
                qSDetailItems.mItems = itemArr;
                qSDetailItems.mAdapter.notifyDataSetChanged();
                return;
            }
            if (i4 == 2) {
                QSDetailItems.this.mCallback = (Callback) message.obj;
                return;
            }
            if (i4 == 3) {
                QSDetailItems qSDetailItems2 = QSDetailItems.this;
                if (message.arg1 == 0) {
                    z = false;
                }
                if (qSDetailItems2.mItemsVisible != z) {
                    qSDetailItems2.mItemsVisible = z;
                    for (int i6 = 0; i6 < qSDetailItems2.mItemList.getChildCount(); i6++) {
                        View childAt = qSDetailItems2.mItemList.getChildAt(i6);
                        if (qSDetailItems2.mItemsVisible) {
                            i = 0;
                        } else {
                            i = 4;
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
        public int iconResId;
        public boolean isActive;
        public boolean isInProgress;
        public CharSequence line1;
        public CharSequence line2;
        public Drawable overlay;
        public Object tag;
        public boolean updateIconSize = false;
        public boolean isDisabled = false;
        public boolean isClickable = true;
        public boolean iconVisibility = true;
        public int itemPaddingAboveBelow = 0;
        public float line1textSize = 0.0f;
        public float line2textSize = 0.0f;
        public final int icon2 = -1;
    }

    public QSDetailItems(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new H();
        this.mAdapter = new Adapter(this, 0);
        this.mItemsVisible = true;
        this.mContext = context;
        this.mTag = "QSDetailItems";
        this.mQsDetailIconOverlaySize = (int) getResources().getDimension(R.dimen.qs_detail_icon_overlay_size);
    }

    public static QSDetailItems convertOrInflate(Context context, ViewGroup viewGroup) {
        return (QSDetailItems) LayoutInflater.from(context).inflate(R.layout.qs_detail_items, viewGroup, false);
    }

    public final int getItemCount() {
        return this.mAdapter.getCount();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (DEBUG) {
            Log.d(this.mTag, "onAttachedToWindow");
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FontSizeUtils.updateFontSize(R.dimen.qs_detail_empty_text_size, this.mEmptyText);
        int childCount = this.mItemList.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mItemList.getChildAt(i);
            FontSizeUtils.updateFontSize(childAt, android.R.id.title, R.dimen.qs_detail_item_primary_text_size);
            FontSizeUtils.updateFontSize(childAt, android.R.id.summary, R.dimen.qs_detail_item_secondary_text_size);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (DEBUG) {
            Log.d(this.mTag, "onDetachedFromWindow");
        }
        this.mCallback = null;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        AutoSizingList autoSizingList = (AutoSizingList) findViewById(android.R.id.list);
        this.mItemList = autoSizingList;
        autoSizingList.setVisibility(8);
        this.mItemList.setAdapter(this.mAdapter);
        View findViewById = findViewById(android.R.id.empty);
        this.mEmpty = findViewById;
        findViewById.setVisibility(8);
        this.mEmptyText = (TextView) this.mEmpty.findViewById(android.R.id.title);
        this.mEmptyIcon = (ImageView) this.mEmpty.findViewById(android.R.id.icon);
    }

    public final void setCallback(Callback callback) {
        this.mHandler.removeMessages(2);
        this.mHandler.obtainMessage(2, callback).sendToTarget();
    }

    public final void setEmptyState(final int i) {
        this.mEmptyIcon.post(new Runnable() { // from class: com.android.systemui.qs.QSDetailItems$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                QSDetailItems qSDetailItems = QSDetailItems.this;
                qSDetailItems.mEmptyText.setText(i);
            }
        });
    }

    public final void setItems(Item[] itemArr) {
        this.mHandler.removeMessages(1);
        this.mHandler.obtainMessage(1, itemArr).sendToTarget();
    }

    public final void setTagSuffix(String str) {
        this.mTag = "QSDetailItems.".concat(str);
    }
}
