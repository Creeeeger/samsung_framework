package com.android.systemui.controls.management.adapter;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ControlsMetricsLogger;
import com.android.systemui.controls.controller.ControlsController;
import com.android.systemui.controls.controller.util.BadgeProvider;
import com.android.systemui.controls.management.adapter.Holder;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.ui.ControlActionCoordinator;
import com.android.systemui.controls.ui.ControlViewHolder;
import com.android.systemui.controls.ui.CustomControlActionCoordinator;
import com.android.systemui.controls.ui.CustomControlsUiController;
import com.android.systemui.controls.ui.util.AUIFacade;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.util.SALogger;
import com.android.systemui.controls.ui.util.SpanManager;
import com.android.systemui.controls.ui.view.ControlsSpinner;
import com.android.systemui.controls.util.ControlsRuneWrapper;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MainControlAdapter extends RecyclerView.Adapter {
    public static final Map controlViewHolders;
    public final AppBarLayout appBarLayout;
    public final AUIFacade auiFacade;
    public final BadgeProvider badgeProvider;
    public final DelayableExecutor bgExecutor;
    public final View.OnClickListener buttonClickCallback;
    public final Context context;
    public final ControlActionCoordinator controlActionCoordinator;
    public final ControlsController controlsController;
    public final ControlsMetricsLogger controlsMetricsLogger;
    public final ControlsRuneWrapper controlsRuneWrapper;
    public final ControlsUtil controlsUtil;
    public final int currentUserId;
    public final CustomControlActionCoordinator customControlActionCoordinator;
    public final MainControlAdapter$itemTouchHelperCallback$1 itemTouchHelperCallback;
    public List models;
    public final CustomControlsUiController.ControlsPanelUpdatedCallback panelUpdatedCallback;
    public final CustomControlsUiController.ControlsPositionChangedCallback positionChangedCallback;
    public final SALogger saLogger;
    public final SpanManager spanManager;
    public final MainControlAdapter$spanSizeLookup$1 spanSizeLookup;
    public final ControlsSpinner.SpinnerItemSelectionChangedCallback spinnerItemSelectedChangedCallback;
    public final ControlsSpinner.SpinnerTouchCallback spinnerTouchCallback;
    public final DelayableExecutor uiExecutor;
    public int uid;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ControlsItemDecoration extends RecyclerView.ItemDecoration {
        public final int basicTextViewFocusedStrokeWidth;
        public final int controlTopDownMargin;
        public final int listMarginResize;
        public final int subheaderSideMargin;

        public ControlsItemDecoration(MainControlAdapter mainControlAdapter, Context context) {
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.basic_interaction_side_margin);
            this.basicTextViewFocusedStrokeWidth = context.getResources().getDimensionPixelSize(R.dimen.accessibility_focus_highlight_stroke_width);
            int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.controls_list_margin_horizontal) - context.getResources().getDimensionPixelSize(R.dimen.control_base_item_side_margin);
            this.listMarginResize = dimensionPixelSize2;
            this.subheaderSideMargin = dimensionPixelSize - dimensionPixelSize2;
            this.controlTopDownMargin = context.getResources().getDimensionPixelSize(R.dimen.control_base_item_side_margin) * 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            Integer num;
            boolean z;
            recyclerView.getClass();
            int childAdapterPosition = RecyclerView.getChildAdapterPosition(view);
            if (childAdapterPosition == -1) {
                return;
            }
            RecyclerView.Adapter adapter = recyclerView.mAdapter;
            Integer num2 = null;
            if (adapter != null) {
                num = Integer.valueOf(adapter.getItemViewType(childAdapterPosition));
            } else {
                num = null;
            }
            boolean z2 = false;
            rect.top = 0;
            rect.left = 0;
            rect.right = 0;
            rect.bottom = 0;
            if ((num == null || num.intValue() != 1) && (!BasicRune.CONTROLS_LAYOUT_TYPE || num == null || num.intValue() != 3)) {
                z = false;
            } else {
                z = true;
            }
            int i = this.controlTopDownMargin;
            if (z) {
                rect.bottom = i;
                return;
            }
            if (num != null && num.intValue() == 0) {
                int i2 = this.subheaderSideMargin - this.basicTextViewFocusedStrokeWidth;
                rect.left = i2;
                rect.right = i2;
                if (childAdapterPosition > 0) {
                    RecyclerView.Adapter adapter2 = recyclerView.mAdapter;
                    if (adapter2 != null) {
                        num2 = Integer.valueOf(adapter2.getItemViewType(childAdapterPosition - 1));
                    }
                    if ((num2 != null && num2.intValue() == 1) || (BasicRune.CONTROLS_LAYOUT_TYPE && num2 != null && num2.intValue() == 3)) {
                        z2 = true;
                    }
                    if (z2) {
                        rect.top = -i;
                        return;
                    }
                    return;
                }
                return;
            }
            if (num != null && num.intValue() == 5) {
                int i3 = -this.listMarginResize;
                rect.left = i3;
                rect.right = i3;
                rect.top = i;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MainModel.Type.values().length];
            try {
                iArr[MainModel.Type.CONTROL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MainModel.Type.SMALL_CONTROL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MainModel.Type.STRUCTURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MainModel.Type.COMPONENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MainModel.Type.PANEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
        controlViewHolders = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x00a2  */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.android.systemui.controls.management.adapter.MainControlAdapter$spanSizeLookup$1] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.android.systemui.controls.management.adapter.MainControlAdapter$itemTouchHelperCallback$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MainControlAdapter(android.content.Context r16, com.android.systemui.controls.controller.ControlsController r17, com.android.systemui.util.concurrency.DelayableExecutor r18, com.android.systemui.util.concurrency.DelayableExecutor r19, com.android.systemui.controls.ui.ControlActionCoordinator r20, com.android.systemui.controls.ui.CustomControlActionCoordinator r21, com.android.systemui.controls.ControlsMetricsLogger r22, com.google.android.material.appbar.AppBarLayout r23, com.android.systemui.controls.ui.util.LayoutUtil r24, com.android.systemui.controls.ui.util.ControlsUtil r25, com.android.systemui.controls.ui.CustomControlsUiController.ControlsPositionChangedCallback r26, com.android.systemui.controls.ui.CustomControlsUiController.ControlsPanelUpdatedCallback r27, com.android.systemui.controls.ui.view.ControlsSpinner.SpinnerTouchCallback r28, com.android.systemui.controls.ui.view.ControlsSpinner.SpinnerItemSelectionChangedCallback r29, android.view.View.OnClickListener r30, com.android.systemui.controls.ui.util.AUIFacade r31, com.android.systemui.controls.ui.util.SALogger r32, com.android.systemui.controls.controller.util.BadgeProvider r33, com.android.systemui.controls.util.ControlsRuneWrapper r34, int r35) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.adapter.MainControlAdapter.<init>(android.content.Context, com.android.systemui.controls.controller.ControlsController, com.android.systemui.util.concurrency.DelayableExecutor, com.android.systemui.util.concurrency.DelayableExecutor, com.android.systemui.controls.ui.ControlActionCoordinator, com.android.systemui.controls.ui.CustomControlActionCoordinator, com.android.systemui.controls.ControlsMetricsLogger, com.google.android.material.appbar.AppBarLayout, com.android.systemui.controls.ui.util.LayoutUtil, com.android.systemui.controls.ui.util.ControlsUtil, com.android.systemui.controls.ui.CustomControlsUiController$ControlsPositionChangedCallback, com.android.systemui.controls.ui.CustomControlsUiController$ControlsPanelUpdatedCallback, com.android.systemui.controls.ui.view.ControlsSpinner$SpinnerTouchCallback, com.android.systemui.controls.ui.view.ControlsSpinner$SpinnerItemSelectionChangedCallback, android.view.View$OnClickListener, com.android.systemui.controls.ui.util.AUIFacade, com.android.systemui.controls.ui.util.SALogger, com.android.systemui.controls.controller.util.BadgeProvider, com.android.systemui.controls.util.ControlsRuneWrapper, int):void");
    }

    public final void attachedToRecyclerView(RecyclerView recyclerView) {
        int measuredWidth = recyclerView.getMeasuredWidth();
        SpanManager spanManager = this.spanManager;
        spanManager.updateSpanInfos(measuredWidth);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), spanManager.maxSpan);
        gridLayoutManager.mSpanSizeLookup = this.spanSizeLookup;
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.addItemDecoration(new ControlsItemDecoration(this, recyclerView.getContext()));
        new ItemTouchHelper(this.itemTouchHelperCallback).attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.models.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[((MainModel) this.models.get(i)).getType().ordinal()];
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return 4;
            }
            if (i2 == 5) {
                return 5;
            }
            throw new NoWhenBranchMatchedException();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(final RecyclerView recyclerView) {
        if (recyclerView.getMeasuredWidth() == 0) {
            recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.systemui.controls.management.adapter.MainControlAdapter$onAttachedToRecyclerView$1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    RecyclerView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    MainControlAdapter mainControlAdapter = this;
                    RecyclerView recyclerView2 = RecyclerView.this;
                    Map map = MainControlAdapter.controlViewHolders;
                    mainControlAdapter.attachedToRecyclerView(recyclerView2);
                }
            });
        } else {
            attachedToRecyclerView(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((Holder) viewHolder).bindData((MainModel) this.models.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        ControlHolder controlHolder;
        LayoutInflater from = LayoutInflater.from(recyclerView.getContext());
        if (i != 0) {
            Map map = controlViewHolders;
            ControlsRuneWrapper controlsRuneWrapper = this.controlsRuneWrapper;
            ControlsUtil controlsUtil = this.controlsUtil;
            CustomControlActionCoordinator customControlActionCoordinator = this.customControlActionCoordinator;
            if (i != 1) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return new PanelHolder(from.inflate(R.layout.controls_panel_layout, (ViewGroup) recyclerView, false), this.panelUpdatedCallback);
                        }
                        throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Wrong viewType: ", i));
                    }
                    return new SpinnerLayoutHolder(from.inflate(R.layout.controls_spinner_layout, (ViewGroup) recyclerView, false), this.spinnerTouchCallback, this.spinnerItemSelectedChangedCallback, this.buttonClickCallback, this.badgeProvider);
                }
                View inflate = from.inflate(R.layout.controls_small_layout_item, (ViewGroup) recyclerView, false);
                ViewStub viewStub = (ViewStub) inflate.requireViewById(R.id.small_layout_viewstub);
                viewStub.setLayoutResource(R.layout.controls_status_info);
                viewStub.inflate();
                ControlViewHolder controlViewHolder = new ControlViewHolder((ViewGroup) inflate, this.controlsController, this.uiExecutor, this.bgExecutor, this.controlActionCoordinator, this.controlsMetricsLogger, this.uid, this.currentUserId);
                controlViewHolder.getCustomControlViewHolder().initialize(customControlActionCoordinator, controlsUtil, 1, controlsRuneWrapper);
                controlHolder = new ControlHolder(inflate, controlViewHolder, map);
            } else {
                View inflate2 = from.inflate(R.layout.controls_custom_base_item, (ViewGroup) recyclerView, false);
                ControlViewHolder controlViewHolder2 = new ControlViewHolder((ViewGroup) inflate2, this.controlsController, this.uiExecutor, this.bgExecutor, this.controlActionCoordinator, this.controlsMetricsLogger, this.uid, this.currentUserId);
                controlViewHolder2.getCustomControlViewHolder().initialize(customControlActionCoordinator, controlsUtil, 0, controlsRuneWrapper);
                controlHolder = new ControlHolder(inflate2, controlViewHolder2, map);
            }
            return controlHolder;
        }
        return new StructureHolder(from.inflate(R.layout.controls_custom_main_zone_header, (ViewGroup) recyclerView, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        int i;
        Holder holder = (Holder) viewHolder;
        if (holder instanceof ControlHolder) {
            int size = this.models.size();
            ControlHolder controlHolder = (ControlHolder) holder;
            int i2 = controlHolder.mPreLayoutPosition;
            if (i2 == -1) {
                i = controlHolder.mPosition;
            } else {
                i = i2;
            }
            if (size > i) {
                List list = this.models;
                if (i2 == -1) {
                    i2 = controlHolder.mPosition;
                }
                controlHolder.updateDimStatus(((MainModel) list.get(i2)).needToMakeDim);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        boolean z;
        Holder holder = (Holder) viewHolder;
        if (list.isEmpty()) {
            onBindViewHolder(holder, i);
            return;
        }
        boolean z2 = true;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == Holder.UpdateReq.UPDATE_DIM_STATUS) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z && (holder instanceof ControlHolder)) {
            ((ControlHolder) holder).updateDimStatus(((MainModel) this.models.get(i)).needToMakeDim);
        }
        if (!list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() != Holder.UpdateReq.UPDATE_DIM_STATUS) {
                    break;
                }
            }
        }
        z2 = false;
        if (z2) {
            onBindViewHolder(holder, i);
        }
    }
}
