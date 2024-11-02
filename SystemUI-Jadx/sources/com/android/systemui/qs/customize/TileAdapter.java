package com.android.systemui.qs.customize;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.R;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.QSEditEvent;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.customize.TileQueryHelper;
import com.android.systemui.qs.external.CustomTile;
import com.android.systemui.qs.tileimpl.QSIconViewImpl;
import com.android.systemui.qs.tileimpl.QSTileViewImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TileAdapter extends RecyclerView.Adapter {
    public final TileAdapterDelegate mAccessibilityDelegate;
    public int mAccessibilityFromIndex;
    public final AnonymousClass5 mCallbacks;
    public final Context mContext;
    public Holder mCurrentDrag;
    public List mCurrentSpecs;
    public final TileItemDecoration mDecoration;
    public int mEditIndex;
    public int mFocusIndex;
    public final QSHost mHost;
    public final ItemTouchHelper mItemTouchHelper;
    public final MarginTileDecoration mMarginDecoration;
    public final int mMinNumTiles;
    public final int mMinTileViewHeight;
    public boolean mNeedsFocus;
    public int mNumColumns;
    public RecyclerView mRecyclerView;
    public final AnonymousClass4 mSizeLookup;
    public int mTileDividerIndex;
    public final UiEventLogger mUiEventLogger;
    public final Handler mHandler = new Handler();
    public final List mTiles = new ArrayList();
    public int mAccessibilityAction = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Holder extends RecyclerView.ViewHolder {
        public final QSTileViewImpl mTileView;

        public Holder(View view) {
            super(view);
            if (view instanceof FrameLayout) {
                QSTileViewImpl qSTileViewImpl = (QSTileViewImpl) ((FrameLayout) view).getChildAt(0);
                this.mTileView = qSTileViewImpl;
                qSTileViewImpl._icon.disableAnimation();
                qSTileViewImpl.setTag(this);
                ViewCompat.setAccessibilityDelegate(qSTileViewImpl, TileAdapter.this.mAccessibilityDelegate);
            }
        }

        public final void stopDrag() {
            this.itemView.animate().setDuration(100L).scaleX(1.0f).scaleY(1.0f);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MarginTileDecoration extends RecyclerView.ItemDecoration {
        public int mHalfMargin;

        public /* synthetic */ MarginTileDecoration(int i) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (recyclerView.getLayoutManager$1() == null) {
                return;
            }
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager$1();
            int i = ((GridLayoutManager.LayoutParams) view.getLayoutParams()).mSpanIndex;
            if (view instanceof TextView) {
                super.getItemOffsets(rect, view, recyclerView, state);
                return;
            }
            if (i != 0 && i != gridLayoutManager.mSpanCount - 1) {
                int i2 = this.mHalfMargin;
                rect.left = i2;
                rect.right = i2;
            } else {
                if (recyclerView.isLayoutRtl()) {
                    if (i == 0) {
                        rect.left = this.mHalfMargin;
                        rect.right = 0;
                        return;
                    } else {
                        rect.left = 0;
                        rect.right = this.mHalfMargin;
                        return;
                    }
                }
                if (i == 0) {
                    rect.left = 0;
                    rect.right = this.mHalfMargin;
                } else {
                    rect.left = this.mHalfMargin;
                    rect.right = 0;
                }
            }
        }

        private MarginTileDecoration() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TileItemDecoration extends RecyclerView.ItemDecoration {
        public final Drawable mDrawable;

        public /* synthetic */ TileItemDecoration(TileAdapter tileAdapter, Context context, int i) {
            this(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void onDraw(Canvas canvas, RecyclerView recyclerView) {
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            int bottom = recyclerView.getBottom();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
                TileAdapter tileAdapter = TileAdapter.this;
                if (childViewHolder != tileAdapter.mCurrentDrag && childViewHolder.getBindingAdapterPosition() != 0 && (childViewHolder.getBindingAdapterPosition() >= tileAdapter.mEditIndex || (childAt instanceof TextView))) {
                    int top = childAt.getTop();
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    int round = Math.round(childAt.getTranslationY()) + top;
                    Drawable drawable = this.mDrawable;
                    drawable.setBounds(0, round, width, bottom);
                    drawable.draw(canvas);
                    return;
                }
            }
        }

        private TileItemDecoration(Context context) {
            this.mDrawable = context.getDrawable(R.drawable.qs_customize_tile_decoration);
        }
    }

    /* renamed from: -$$Nest$mselectPosition, reason: not valid java name */
    public static void m1333$$Nest$mselectPosition(TileAdapter tileAdapter, int i) {
        if (tileAdapter.mAccessibilityAction == 1) {
            List list = tileAdapter.mTiles;
            int i2 = tileAdapter.mEditIndex;
            tileAdapter.mEditIndex = i2 - 1;
            ((ArrayList) list).remove(i2);
        }
        tileAdapter.mAccessibilityAction = 0;
        tileAdapter.move(tileAdapter.mAccessibilityFromIndex, i, false);
        tileAdapter.mFocusIndex = i;
        tileAdapter.mNeedsFocus = true;
        tileAdapter.notifyDataSetChanged();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.systemui.qs.customize.TileAdapter$4, androidx.recyclerview.widget.GridLayoutManager$SpanSizeLookup] */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback, com.android.systemui.qs.customize.TileAdapter$5] */
    public TileAdapter(Context context, QSHost qSHost, UiEventLogger uiEventLogger) {
        int i = 0;
        ?? r1 = new GridLayoutManager.SpanSizeLookup() { // from class: com.android.systemui.qs.customize.TileAdapter.4
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public final int getSpanSize(int i2) {
                TileAdapter tileAdapter = TileAdapter.this;
                int itemViewType = tileAdapter.getItemViewType(i2);
                if (itemViewType != 1 && itemViewType != 4 && itemViewType != 3) {
                    return 1;
                }
                return tileAdapter.mNumColumns;
            }
        };
        this.mSizeLookup = r1;
        ?? r2 = new ItemTouchHelper.Callback() { // from class: com.android.systemui.qs.customize.TileAdapter.5
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean canDropOver(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                boolean z;
                int bindingAdapterPosition = viewHolder2.getBindingAdapterPosition();
                if (bindingAdapterPosition == 0 || bindingAdapterPosition == -1) {
                    return false;
                }
                TileAdapter tileAdapter = TileAdapter.this;
                if (tileAdapter.mCurrentSpecs.size() > tileAdapter.mMinNumTiles) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    int bindingAdapterPosition2 = viewHolder.getBindingAdapterPosition();
                    int i2 = tileAdapter.mEditIndex;
                    if (bindingAdapterPosition2 < i2) {
                        if (bindingAdapterPosition >= i2) {
                            return false;
                        }
                        return true;
                    }
                }
                if (bindingAdapterPosition > tileAdapter.mEditIndex + 1) {
                    return false;
                }
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                ((Holder) viewHolder).stopDrag();
                super.clearView(recyclerView, viewHolder);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final int getMovementFlags(RecyclerView.ViewHolder viewHolder) {
                int i2 = viewHolder.mItemViewType;
                if (i2 != 1 && i2 != 3 && i2 != 4) {
                    return ItemTouchHelper.Callback.makeMovementFlags(15, 0);
                }
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean isItemViewSwipeEnabled() {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean isLongPressDragEnabled() {
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean onMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                int bindingAdapterPosition2 = viewHolder2.getBindingAdapterPosition();
                if (bindingAdapterPosition != 0 && bindingAdapterPosition != -1 && bindingAdapterPosition2 != 0 && bindingAdapterPosition2 != -1) {
                    TileAdapter.this.move(bindingAdapterPosition, bindingAdapterPosition2, true);
                    return true;
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i2) {
                boolean z;
                super.onSelectedChanged(viewHolder, i2);
                if (i2 != 2) {
                    viewHolder = null;
                }
                TileAdapter tileAdapter = TileAdapter.this;
                Holder holder = tileAdapter.mCurrentDrag;
                if (viewHolder == holder) {
                    return;
                }
                if (holder != null) {
                    int bindingAdapterPosition = holder.getBindingAdapterPosition();
                    if (bindingAdapterPosition == -1) {
                        return;
                    }
                    TileQueryHelper.TileInfo tileInfo = (TileQueryHelper.TileInfo) ((ArrayList) tileAdapter.mTiles).get(bindingAdapterPosition);
                    CustomizeTileView customizeTileView = (CustomizeTileView) tileAdapter.mCurrentDrag.mTileView;
                    int i3 = 0;
                    if (bindingAdapterPosition > tileAdapter.mEditIndex && !tileInfo.isSystem) {
                        z = true;
                    } else {
                        z = false;
                    }
                    customizeTileView.showAppLabel = z;
                    TextView secondaryLabel = customizeTileView.getSecondaryLabel();
                    CharSequence text = customizeTileView.getSecondaryLabel().getText();
                    if (!customizeTileView.showAppLabel || TextUtils.isEmpty(text)) {
                        i3 = 8;
                    }
                    secondaryLabel.setVisibility(i3);
                    tileAdapter.mCurrentDrag.stopDrag();
                    tileAdapter.mCurrentDrag = null;
                }
                if (viewHolder != null) {
                    Holder holder2 = (Holder) viewHolder;
                    tileAdapter.mCurrentDrag = holder2;
                    holder2.itemView.animate().setDuration(100L).scaleX(1.2f).scaleY(1.2f);
                }
                tileAdapter.mHandler.post(new Runnable() { // from class: com.android.systemui.qs.customize.TileAdapter.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TileAdapter tileAdapter2 = TileAdapter.this;
                        tileAdapter2.notifyItemChanged(tileAdapter2.mEditIndex);
                    }
                });
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
            }
        };
        this.mCallbacks = r2;
        this.mContext = context;
        this.mHost = qSHost;
        this.mUiEventLogger = uiEventLogger;
        this.mItemTouchHelper = new ItemTouchHelper(r2);
        this.mDecoration = new TileItemDecoration(this, context, i);
        this.mMarginDecoration = new MarginTileDecoration(i);
        this.mMinNumTiles = context.getResources().getInteger(R.integer.quick_settings_min_num_tiles);
        this.mNumColumns = context.getResources().getInteger(R.integer.quick_settings_num_columns);
        this.mAccessibilityDelegate = new TileAdapterDelegate();
        r1.mCacheSpanIndices = true;
        new TextView(context);
        this.mMinTileViewHeight = context.getResources().getDimensionPixelSize(R.dimen.qs_tile_height);
    }

    public static String strip(TileQueryHelper.TileInfo tileInfo) {
        String str = tileInfo.spec;
        if (str.startsWith("custom(")) {
            return CustomTile.getComponentFromSpec(str).getPackageName();
        }
        return str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return ((ArrayList) this.mTiles).size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        if (i == 0) {
            return 3;
        }
        if (this.mAccessibilityAction == 1 && i == this.mEditIndex - 1) {
            return 2;
        }
        if (i == this.mTileDividerIndex) {
            return 4;
        }
        if (((ArrayList) this.mTiles).get(i) == null) {
            return 1;
        }
        return 0;
    }

    public final void move(int i, int i2, boolean z) {
        if (i2 == i) {
            return;
        }
        List list = this.mTiles;
        ArrayList arrayList = (ArrayList) list;
        arrayList.add(i2, arrayList.remove(i));
        if (z) {
            notifyItemMoved(i, i2);
        }
        this.mEditIndex = -1;
        ArrayList arrayList2 = (ArrayList) list;
        this.mTileDividerIndex = arrayList2.size();
        int i3 = 1;
        for (int i4 = 1; i4 < arrayList2.size(); i4++) {
            if (arrayList2.get(i4) == null) {
                if (this.mEditIndex == -1) {
                    this.mEditIndex = i4;
                } else {
                    this.mTileDividerIndex = i4;
                }
            }
        }
        int size = arrayList2.size() - 1;
        int i5 = this.mTileDividerIndex;
        if (size == i5) {
            notifyItemChanged(i5);
        }
        int i6 = this.mEditIndex;
        UiEventLogger uiEventLogger = this.mUiEventLogger;
        if (i2 >= i6) {
            uiEventLogger.log(QSEditEvent.QS_EDIT_REMOVE, 0, strip((TileQueryHelper.TileInfo) arrayList.get(i2)));
        } else if (i >= i6) {
            uiEventLogger.log(QSEditEvent.QS_EDIT_ADD, 0, strip((TileQueryHelper.TileInfo) arrayList.get(i2)));
        } else {
            uiEventLogger.log(QSEditEvent.QS_EDIT_MOVE, 0, strip((TileQueryHelper.TileInfo) arrayList.get(i2)));
        }
        ArrayList arrayList3 = new ArrayList();
        this.mNeedsFocus = false;
        if (this.mAccessibilityAction == 1) {
            int i7 = this.mEditIndex - 1;
            this.mEditIndex = i7;
            ((ArrayList) list).remove(i7);
            notifyDataSetChanged();
        }
        this.mAccessibilityAction = 0;
        while (true) {
            ArrayList arrayList4 = (ArrayList) list;
            if (i3 >= arrayList4.size() || arrayList4.get(i3) == null) {
                break;
            }
            arrayList3.add(((TileQueryHelper.TileInfo) arrayList4.get(i3)).spec);
            i3++;
        }
        this.mHost.changeTilesByUser(this.mCurrentSpecs, arrayList3);
        this.mCurrentSpecs = arrayList3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        String string;
        final Holder holder = (Holder) viewHolder;
        QSTileViewImpl qSTileViewImpl = holder.mTileView;
        if (qSTileViewImpl != null) {
            qSTileViewImpl.setMinimumHeight(this.mMinTileViewHeight);
        }
        int i3 = holder.mItemViewType;
        int i4 = 4;
        boolean z5 = false;
        View view = holder.itemView;
        if (i3 == 3) {
            if (this.mAccessibilityAction == 0) {
                z5 = true;
            }
            view.setFocusable(z5);
            if (z5) {
                i4 = 1;
            }
            view.setImportantForAccessibility(i4);
            view.setFocusableInTouchMode(z5);
            return;
        }
        List list = this.mTiles;
        if (i3 == 4) {
            if (this.mTileDividerIndex < ((ArrayList) list).size() - 1) {
                i4 = 0;
            }
            view.setVisibility(i4);
            return;
        }
        Context context = this.mContext;
        if (i3 == 1) {
            Resources resources = context.getResources();
            if (this.mCurrentDrag == null) {
                string = resources.getString(R.string.drag_to_add_tiles);
            } else {
                int size = this.mCurrentSpecs.size();
                int i5 = this.mMinNumTiles;
                if (size > i5) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z4 && this.mCurrentDrag.getBindingAdapterPosition() < this.mEditIndex) {
                    string = resources.getString(R.string.drag_to_remove_disabled, Integer.valueOf(i5));
                } else {
                    string = resources.getString(R.string.drag_to_remove_tiles);
                }
            }
            ((TextView) view.findViewById(android.R.id.title)).setText(string);
            if (this.mAccessibilityAction == 0) {
                z5 = true;
            }
            view.setFocusable(z5);
            if (z5) {
                i4 = 1;
            }
            view.setImportantForAccessibility(i4);
            view.setFocusableInTouchMode(z5);
            return;
        }
        if (i3 == 2) {
            qSTileViewImpl.setClickable(true);
            qSTileViewImpl.setFocusable(true);
            qSTileViewImpl.setFocusableInTouchMode(true);
            qSTileViewImpl.setVisibility(0);
            qSTileViewImpl.setImportantForAccessibility(1);
            qSTileViewImpl.setContentDescription(context.getString(R.string.accessibility_qs_edit_tile_add_to_position, Integer.valueOf(i)));
            qSTileViewImpl.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.customize.TileAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TileAdapter.m1333$$Nest$mselectPosition(TileAdapter.this, holder.getLayoutPosition());
                }
            });
            if (this.mNeedsFocus) {
                qSTileViewImpl.requestLayout();
                qSTileViewImpl.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: com.android.systemui.qs.customize.TileAdapter.3
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view2, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
                        holder.mTileView.removeOnLayoutChangeListener(this);
                        holder.mTileView.requestAccessibilityFocus();
                    }
                });
                this.mNeedsFocus = false;
                this.mFocusIndex = -1;
                return;
            }
            return;
        }
        TileQueryHelper.TileInfo tileInfo = (TileQueryHelper.TileInfo) ((ArrayList) list).get(i);
        if (i > 0 && i < this.mEditIndex) {
            z = true;
        } else {
            z = false;
        }
        if (z && this.mAccessibilityAction == 1) {
            tileInfo.state.contentDescription = context.getString(R.string.accessibility_qs_edit_tile_add_to_position, Integer.valueOf(i));
        } else if (z && this.mAccessibilityAction == 2) {
            tileInfo.state.contentDescription = context.getString(R.string.accessibility_qs_edit_tile_move_to_position, Integer.valueOf(i));
        } else {
            QSTile.State state = tileInfo.state;
            state.contentDescription = state.label;
        }
        tileInfo.state.expandedAccessibilityClassName = "";
        CustomizeTileView customizeTileView = (CustomizeTileView) qSTileViewImpl;
        Objects.requireNonNull(customizeTileView, "The holder must have a tileView");
        customizeTileView.handleStateChanged(tileInfo.state);
        int i6 = this.mEditIndex;
        boolean z6 = tileInfo.isSystem;
        if (i > i6 && !z6) {
            z2 = true;
        } else {
            z2 = false;
        }
        customizeTileView.showAppLabel = z2;
        TextView secondaryLabel = customizeTileView.getSecondaryLabel();
        CharSequence text = customizeTileView.getSecondaryLabel().getText();
        if (customizeTileView.showAppLabel && !TextUtils.isEmpty(text)) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        secondaryLabel.setVisibility(i2);
        if (i >= this.mEditIndex && !z6) {
            z3 = false;
        } else {
            z3 = true;
        }
        customizeTileView.showSideView = z3;
        if (!z3) {
            customizeTileView.getSideView().setVisibility(8);
        }
        qSTileViewImpl.setSelected(true);
        qSTileViewImpl.setImportantForAccessibility(1);
        qSTileViewImpl.setClickable(true);
        qSTileViewImpl.setOnClickListener(null);
        qSTileViewImpl.setFocusable(true);
        qSTileViewImpl.setFocusableInTouchMode(true);
        if (this.mAccessibilityAction != 0) {
            qSTileViewImpl.setClickable(z);
            qSTileViewImpl.setFocusable(z);
            qSTileViewImpl.setFocusableInTouchMode(z);
            if (z) {
                i4 = 1;
            }
            qSTileViewImpl.setImportantForAccessibility(i4);
            if (z) {
                qSTileViewImpl.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.customize.TileAdapter.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int layoutPosition = holder.getLayoutPosition();
                        if (layoutPosition == -1) {
                            return;
                        }
                        TileAdapter tileAdapter = TileAdapter.this;
                        if (tileAdapter.mAccessibilityAction != 0) {
                            TileAdapter.m1333$$Nest$mselectPosition(tileAdapter, layoutPosition);
                        }
                    }
                });
            }
        }
        if (i == this.mFocusIndex && this.mNeedsFocus) {
            qSTileViewImpl.requestLayout();
            qSTileViewImpl.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: com.android.systemui.qs.customize.TileAdapter.3
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view2, int i62, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
                    holder.mTileView.removeOnLayoutChangeListener(this);
                    holder.mTileView.requestAccessibilityFocus();
                }
            });
            this.mNeedsFocus = false;
            this.mFocusIndex = -1;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        Context context = recyclerView.getContext();
        LayoutInflater from = LayoutInflater.from(context);
        int i2 = 0;
        if (i == 3) {
            View inflate = from.inflate(R.layout.qs_customize_header, (ViewGroup) recyclerView, false);
            Resources resources = context.getResources();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.style.QSCustomizeToolbar, com.android.internal.R.styleable.Toolbar);
            int resourceId = obtainStyledAttributes.getResourceId(27, 0);
            obtainStyledAttributes.recycle();
            if (resourceId != 0) {
                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, android.R.styleable.View);
                i2 = obtainStyledAttributes2.getDimensionPixelSize(36, 0);
                obtainStyledAttributes2.recycle();
            }
            inflate.setMinimumHeight(((resources.getDimensionPixelSize(R.dimen.qs_brightness_margin_bottom) + (resources.getDimensionPixelSize(R.dimen.qs_brightness_margin_top) + (resources.getDimensionPixelSize(R.dimen.brightness_mirror_height) + resources.getDimensionPixelSize(R.dimen.qs_panel_padding_top)))) - i2) - resources.getDimensionPixelSize(R.dimen.qs_tile_margin_top_bottom));
            return new Holder(inflate);
        }
        if (i == 4) {
            return new Holder(from.inflate(R.layout.qs_customize_tile_divider, (ViewGroup) recyclerView, false));
        }
        if (i == 1) {
            return new Holder(from.inflate(R.layout.qs_customize_divider, (ViewGroup) recyclerView, false));
        }
        FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.qs_customize_tile_frame, (ViewGroup) recyclerView, false);
        frameLayout.addView(new CustomizeTileView(context, new QSIconViewImpl(context)));
        return new Holder(frameLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        Holder holder = (Holder) viewHolder;
        holder.stopDrag();
        View view = holder.itemView;
        view.clearAnimation();
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        return true;
    }
}
