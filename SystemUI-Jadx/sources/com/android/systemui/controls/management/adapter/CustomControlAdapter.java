package com.android.systemui.controls.management.adapter;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ControlInterface;
import com.android.systemui.controls.ControlStatus;
import com.android.systemui.controls.management.model.AllControlsModel;
import com.android.systemui.controls.management.model.CustomControlStatusWrapper;
import com.android.systemui.controls.management.model.CustomControlsModel;
import com.android.systemui.controls.management.model.CustomElementWrapper;
import com.android.systemui.controls.management.model.CustomStructureNameWrapper;
import com.android.systemui.controls.management.model.CustomZoneNameWrapper;
import com.android.systemui.controls.management.model.VerticalPaddingWrapper;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.util.SpanManager;
import com.android.systemui.controls.util.ControlsRuneWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomControlAdapter extends RecyclerView.Adapter {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ControlsRuneWrapper controlsRuneWrapper;
    public final ControlsUtil controlsUtil;
    public final int currentUserId;
    public CustomControlsModel model;
    public final SpanManager spanManager;
    public final CustomControlAdapter$spanSizeLookup$1 spanSizeLookup;

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
    public final class CustomMarginItemDecorator extends RecyclerView.ItemDecoration {
        public final int basicTextViewFocusedStrokeWidth;
        public final int itemBottomMargin;
        public final int structureStartMarginResize;
        public final int zoneSideMarginResize;

        public CustomMarginItemDecorator(Context context) {
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.controls_list_margin_horizontal) - context.getResources().getDimensionPixelSize(R.dimen.control_base_item_side_margin);
            int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.basic_interaction_side_margin);
            this.basicTextViewFocusedStrokeWidth = context.getResources().getDimensionPixelSize(R.dimen.accessibility_focus_highlight_stroke_width);
            int dimensionPixelSize3 = context.getResources().getDimensionPixelSize(R.dimen.basic_interaction_checkbox_side_margin);
            this.zoneSideMarginResize = dimensionPixelSize2 - dimensionPixelSize;
            this.structureStartMarginResize = dimensionPixelSize3 - dimensionPixelSize;
            this.itemBottomMargin = context.getResources().getDimensionPixelSize(R.dimen.control_base_item_side_margin) * 2;
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
            if ((num == null || num.intValue() != 1) && (!BasicRune.CONTROLS_LAYOUT_TYPE || num == null || num.intValue() != 103)) {
                z = false;
            } else {
                z = true;
            }
            int i = this.itemBottomMargin;
            if (z) {
                rect.bottom = i;
                return;
            }
            int i2 = this.zoneSideMarginResize;
            if (num != null && num.intValue() == 101) {
                rect.left = this.structureStartMarginResize;
                rect.right = i2;
            } else if (num != null && num.intValue() == 0) {
                int i3 = i2 - this.basicTextViewFocusedStrokeWidth;
                rect.left = i3;
                rect.right = i3;
            }
            if (childAdapterPosition > 0) {
                RecyclerView.Adapter adapter2 = recyclerView.mAdapter;
                if (adapter2 != null) {
                    num2 = Integer.valueOf(adapter2.getItemViewType(childAdapterPosition - 1));
                }
                if ((num2 != null && num2.intValue() == 1) || (BasicRune.CONTROLS_LAYOUT_TYPE && num2 != null && num2.intValue() == 103)) {
                    z2 = true;
                }
                if (z2) {
                    rect.top = -i;
                }
            }
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0077  */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.android.systemui.controls.management.adapter.CustomControlAdapter$spanSizeLookup$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CustomControlAdapter(android.content.Context r10, com.android.systemui.controls.ui.util.LayoutUtil r11, com.android.systemui.controls.ui.util.ControlsUtil r12, com.android.systemui.controls.util.ControlsRuneWrapper r13, int r14) {
        /*
            r9 = this;
            r9.<init>()
            r9.controlsUtil = r12
            r9.controlsRuneWrapper = r13
            r9.currentUserId = r14
            com.android.systemui.controls.ui.util.SpanManager r13 = new com.android.systemui.controls.ui.util.SpanManager
            r13.<init>(r11)
            java.util.Map r11 = r13.spanInfos
            r14 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r14)
            com.android.systemui.controls.ui.util.SpanInfo r1 = new com.android.systemui.controls.ui.util.SpanInfo
            r2 = 3
            r3 = 0
            r1.<init>(r14, r14, r2, r3)
            r11.put(r0, r1)
            r0 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.android.systemui.controls.ui.util.SpanInfo r1 = new com.android.systemui.controls.ui.util.SpanInfo
            boolean r4 = com.android.systemui.BasicRune.CONTROLS_SAMSUNG_STYLE_FOLD
            r5 = 2131165687(0x7f0701f7, float:1.7945598E38)
            r6 = 2131165686(0x7f0701f6, float:1.7945596E38)
            if (r4 == 0) goto L42
            r12.getClass()
            boolean r7 = com.android.systemui.controls.ui.util.ControlsUtil.isFoldDelta(r10)
            if (r7 == 0) goto L42
            android.content.res.Resources r7 = r10.getResources()
            int r7 = r7.getDimensionPixelSize(r5)
            goto L4a
        L42:
            android.content.res.Resources r7 = r10.getResources()
            int r7 = r7.getDimensionPixelSize(r6)
        L4a:
            r8 = 2
            r1.<init>(r7, r14, r8, r3)
            r11.put(r0, r1)
            r0 = 101(0x65, float:1.42E-43)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.android.systemui.controls.ui.util.SpanInfo r1 = new com.android.systemui.controls.ui.util.SpanInfo
            r1.<init>(r14, r14, r2, r3)
            r11.put(r0, r1)
            r0 = 102(0x66, float:1.43E-43)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.android.systemui.controls.ui.util.SpanInfo r1 = new com.android.systemui.controls.ui.util.SpanInfo
            r1.<init>(r14, r14, r2, r3)
            r11.put(r0, r1)
            r0 = 103(0x67, float:1.44E-43)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.android.systemui.controls.ui.util.SpanInfo r1 = new com.android.systemui.controls.ui.util.SpanInfo
            if (r4 == 0) goto L89
            r12.getClass()
            boolean r12 = com.android.systemui.controls.ui.util.ControlsUtil.isFoldDelta(r10)
            if (r12 == 0) goto L89
            android.content.res.Resources r10 = r10.getResources()
            int r10 = r10.getDimensionPixelSize(r5)
            goto L91
        L89:
            android.content.res.Resources r10 = r10.getResources()
            int r10 = r10.getDimensionPixelSize(r6)
        L91:
            r1.<init>(r10, r14, r8, r3)
            r11.put(r0, r1)
            r9.spanManager = r13
            com.android.systemui.controls.management.adapter.CustomControlAdapter$spanSizeLookup$1 r10 = new com.android.systemui.controls.management.adapter.CustomControlAdapter$spanSizeLookup$1
            r10.<init>()
            r9.spanSizeLookup = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.adapter.CustomControlAdapter.<init>(android.content.Context, com.android.systemui.controls.ui.util.LayoutUtil, com.android.systemui.controls.ui.util.ControlsUtil, com.android.systemui.controls.util.ControlsRuneWrapper, int):void");
    }

    public static final View onCreateViewHolder$inflate(RecyclerView recyclerView, int i) {
        return LayoutInflater.from(recyclerView.getContext()).inflate(i, (ViewGroup) recyclerView, false);
    }

    public final void attachedToRecyclerView(RecyclerView recyclerView) {
        int measuredWidth = recyclerView.getMeasuredWidth();
        SpanManager spanManager = this.spanManager;
        spanManager.updateSpanInfos(measuredWidth);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), spanManager.maxSpan);
        gridLayoutManager.mSpanSizeLookup = this.spanSizeLookup;
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.addItemDecoration(new CustomMarginItemDecorator(recyclerView.getContext()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        List list;
        CustomControlsModel customControlsModel = this.model;
        if (customControlsModel != null && (list = ((AllControlsModel) customControlsModel).elements) != null) {
            return ((ArrayList) list).size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        CustomControlsModel customControlsModel = this.model;
        if (customControlsModel != null) {
            CustomElementWrapper customElementWrapper = (CustomElementWrapper) ((ArrayList) ((AllControlsModel) customControlsModel).elements).get(i);
            if (customElementWrapper instanceof CustomZoneNameWrapper) {
                return 0;
            }
            if (customElementWrapper instanceof CustomControlStatusWrapper) {
                if (!BasicRune.CONTROLS_LAYOUT_TYPE || ((CustomControlStatusWrapper) customElementWrapper).controlStatus.control.getCustomControl().getLayoutType() != 1) {
                    return 1;
                }
                return 103;
            }
            if (customElementWrapper instanceof CustomStructureNameWrapper) {
                return 101;
            }
            if (customElementWrapper instanceof VerticalPaddingWrapper) {
                return 102;
            }
            throw new NoWhenBranchMatchedException();
        }
        throw new IllegalStateException("Getting item type for null model");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(final RecyclerView recyclerView) {
        if (recyclerView.getMeasuredWidth() == 0) {
            recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.systemui.controls.management.adapter.CustomControlAdapter$onAttachedToRecyclerView$1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    RecyclerView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    CustomControlAdapter customControlAdapter = this;
                    RecyclerView recyclerView2 = RecyclerView.this;
                    int i = CustomControlAdapter.$r8$clinit;
                    customControlAdapter.attachedToRecyclerView(recyclerView2);
                }
            });
        } else {
            attachedToRecyclerView(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        CustomHolder customHolder = (CustomHolder) viewHolder;
        CustomControlsModel customControlsModel = this.model;
        if (customControlsModel != null) {
            customHolder.bindData((CustomElementWrapper) ((ArrayList) ((AllControlsModel) customControlsModel).elements).get(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        if (i != 0) {
            if (i != 1) {
                switch (i) {
                    case 101:
                        return new StructureCustomHolder(onCreateViewHolder$inflate(recyclerView, R.layout.controls_structure_category_header), new Function2() { // from class: com.android.systemui.controls.management.adapter.CustomControlAdapter$onCreateViewHolder$3
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Object obj3;
                                Object obj4;
                                boolean z;
                                boolean z2;
                                String str = (String) obj;
                                boolean booleanValue = ((Boolean) obj2).booleanValue();
                                CustomControlsModel customControlsModel = CustomControlAdapter.this.model;
                                if (customControlsModel != null) {
                                    AllControlsModel allControlsModel = (AllControlsModel) customControlsModel;
                                    ArrayList arrayList = (ArrayList) allControlsModel.elements;
                                    Iterator it = arrayList.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            obj3 = it.next();
                                            CustomElementWrapper customElementWrapper = (CustomElementWrapper) obj3;
                                            if ((customElementWrapper instanceof CustomStructureNameWrapper) && Intrinsics.areEqual(((CustomStructureNameWrapper) customElementWrapper).structureName, str)) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            if (z2) {
                                                break;
                                            }
                                        } else {
                                            obj3 = null;
                                            break;
                                        }
                                    }
                                    CustomStructureNameWrapper customStructureNameWrapper = (CustomStructureNameWrapper) obj3;
                                    if (customStructureNameWrapper != null && booleanValue != customStructureNameWrapper.favorite) {
                                        for (ControlStatus controlStatus : allControlsModel.controls) {
                                            Iterator it2 = arrayList.iterator();
                                            while (true) {
                                                if (it2.hasNext()) {
                                                    obj4 = it2.next();
                                                    CustomElementWrapper customElementWrapper2 = (CustomElementWrapper) obj4;
                                                    if ((customElementWrapper2 instanceof CustomControlStatusWrapper) && Intrinsics.areEqual(((CustomControlStatusWrapper) customElementWrapper2).controlStatus.control.getControlId(), controlStatus.getControlId())) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (z) {
                                                        break;
                                                    }
                                                } else {
                                                    obj4 = null;
                                                    break;
                                                }
                                            }
                                            allControlsModel.setControlFavoriteStatus((CustomControlStatusWrapper) obj4, booleanValue);
                                        }
                                        customStructureNameWrapper.favorite = booleanValue;
                                        int indexOf = arrayList.indexOf(customStructureNameWrapper);
                                        RecyclerView.Adapter adapter = allControlsModel.adapter;
                                        if (adapter != null) {
                                            adapter.notifyItemChanged(indexOf, new Object());
                                        }
                                    }
                                }
                                return Unit.INSTANCE;
                            }
                        });
                    case 102:
                        return new PaddingCustomHolder(onCreateViewHolder$inflate(recyclerView, R.layout.controls_empty_padding));
                    case 103:
                        return new SmallControlCustomHolder(onCreateViewHolder$inflate(recyclerView, R.layout.controls_small_layout_item), this.currentUserId, this.controlsUtil, this.controlsRuneWrapper, new Function2() { // from class: com.android.systemui.controls.management.adapter.CustomControlAdapter$onCreateViewHolder$2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                String str = (String) obj;
                                boolean booleanValue = ((Boolean) obj2).booleanValue();
                                CustomControlsModel customControlsModel = CustomControlAdapter.this.model;
                                if (customControlsModel != null) {
                                    ((AllControlsModel) customControlsModel).changeFavoriteStatus(str, booleanValue);
                                }
                                return Unit.INSTANCE;
                            }
                        });
                    default:
                        throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Wrong viewType: ", i));
                }
            }
            return new ControlCustomHolder(onCreateViewHolder$inflate(recyclerView, R.layout.controls_custom_base_item), this.currentUserId, this.controlsUtil, this.controlsRuneWrapper, new Function2() { // from class: com.android.systemui.controls.management.adapter.CustomControlAdapter$onCreateViewHolder$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    String str = (String) obj;
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    CustomControlsModel customControlsModel = CustomControlAdapter.this.model;
                    if (customControlsModel != null) {
                        ((AllControlsModel) customControlsModel).changeFavoriteStatus(str, booleanValue);
                    }
                    return Unit.INSTANCE;
                }
            });
        }
        return new ZoneCustomHolder(onCreateViewHolder$inflate(recyclerView, R.layout.controls_custom_zone_header));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        CustomHolder customHolder = (CustomHolder) viewHolder;
        if (list.isEmpty()) {
            onBindViewHolder(customHolder, i);
            return;
        }
        CustomControlsModel customControlsModel = this.model;
        if (customControlsModel != null) {
            Object obj = (CustomElementWrapper) ((ArrayList) ((AllControlsModel) customControlsModel).elements).get(i);
            if (obj instanceof ControlInterface) {
                customHolder.updateFavorite(((ControlInterface) obj).getFavorite());
            } else if (obj instanceof CustomStructureNameWrapper) {
                customHolder.updateFavorite(((CustomStructureNameWrapper) obj).favorite);
            }
        }
    }
}
