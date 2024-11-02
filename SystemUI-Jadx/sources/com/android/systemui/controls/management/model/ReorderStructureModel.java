package com.android.systemui.controls.management.model;

import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ReorderStructureModel implements StructureModel {
    public RecyclerView.Adapter adapter;
    public int dragPos = -1;
    public final List elements;
    public boolean isDragging;
    public final ItemTouchHelper itemTouchHelper;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
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

    public ReorderStructureModel(List<? extends CharSequence> list) {
        new ArrayList();
        ArrayList arrayList = new ArrayList();
        Iterator<? extends CharSequence> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new ReorderWrapper(it.next()));
        }
        this.elements = arrayList;
        this.itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback() { // from class: com.android.systemui.controls.management.model.ReorderStructureModel$itemTouchHelper$1
            public final int MOVEMENT;

            {
                super(0, 0);
                this.MOVEMENT = 3;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback, androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final int getMovementFlags(RecyclerView.ViewHolder viewHolder) {
                return ItemTouchHelper.Callback.makeMovementFlags(this.MOVEMENT, 0);
            }

            /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
            
                if (r9 != false) goto L21;
             */
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onChildDraw(android.graphics.Canvas r17, androidx.recyclerview.widget.RecyclerView r18, androidx.recyclerview.widget.RecyclerView.ViewHolder r19, float r20, float r21, int r22, boolean r23) {
                /*
                    r16 = this;
                    r0 = r20
                    r1 = r21
                    r2 = r19
                    android.view.View r3 = r2.itemView
                    int r4 = r3.getTop()
                    float r4 = (float) r4
                    float r4 = r4 + r1
                    int r5 = r3.getHeight()
                    float r5 = (float) r5
                    float r5 = r5 + r4
                    r6 = 2131364019(0x7f0a08b3, float:1.8347863E38)
                    android.view.View r3 = r3.requireViewById(r6)
                    android.widget.LinearLayout r3 = (android.widget.LinearLayout) r3
                    r6 = r16
                    com.android.systemui.controls.management.model.ReorderStructureModel r7 = com.android.systemui.controls.management.model.ReorderStructureModel.this
                    boolean r8 = r7.isDragging
                    r9 = 1
                    r10 = -1
                    r11 = 0
                    if (r8 == 0) goto L4f
                    int r8 = r7.dragPos
                    if (r8 != r10) goto L4f
                    double r12 = (double) r0
                    double r14 = (double) r1
                    double r12 = java.lang.Math.hypot(r12, r14)
                    float r8 = (float) r12
                    int r8 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
                    if (r8 >= 0) goto L4f
                    int r8 = r19.getBindingAdapterPosition()
                    r7.dragPos = r8
                    r3.setPressed(r9)
                    android.content.res.Resources r7 = r3.getResources()
                    r8 = 2131165341(0x7f07009d, float:1.7944896E38)
                    float r7 = r7.getDimension(r8)
                    r3.setElevation(r7)
                    goto L71
                L4f:
                    boolean r8 = r7.isDragging
                    r12 = 0
                    if (r8 == 0) goto L65
                    int r8 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
                    if (r8 != 0) goto L5a
                    r8 = r9
                    goto L5b
                L5a:
                    r8 = r12
                L5b:
                    if (r8 == 0) goto L71
                    int r8 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
                    if (r8 != 0) goto L62
                    goto L63
                L62:
                    r9 = r12
                L63:
                    if (r9 == 0) goto L71
                L65:
                    int r8 = r7.dragPos
                    if (r8 == r10) goto L6f
                    r3.setPressed(r12)
                    r3.setElevation(r11)
                L6f:
                    r7.dragPos = r10
                L71:
                    int r3 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
                    if (r3 <= 0) goto L81
                    int r3 = r18.getHeight()
                    float r3 = (float) r3
                    int r3 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                    if (r3 >= 0) goto L81
                    super.onChildDraw(r17, r18, r19, r20, r21, r22, r23)
                L81:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.model.ReorderStructureModel$itemTouchHelper$1.onChildDraw(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$ViewHolder, float, float, int, boolean):void");
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean onMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                int bindingAdapterPosition2 = viewHolder2.getBindingAdapterPosition();
                ReorderStructureModel reorderStructureModel = ReorderStructureModel.this;
                List list2 = reorderStructureModel.elements;
                if (bindingAdapterPosition < bindingAdapterPosition2) {
                    int i = bindingAdapterPosition;
                    while (i < bindingAdapterPosition2) {
                        int i2 = i + 1;
                        Collections.swap(list2, i, i2);
                        i = i2;
                    }
                } else {
                    int i3 = bindingAdapterPosition2 + 1;
                    if (i3 <= bindingAdapterPosition) {
                        int i4 = bindingAdapterPosition;
                        while (true) {
                            int i5 = i4 - 1;
                            Collections.swap(list2, i4, i5);
                            if (i4 == i3) {
                                break;
                            }
                            i4 = i5;
                        }
                    }
                }
                RecyclerView.Adapter adapter = reorderStructureModel.adapter;
                if (adapter != null) {
                    adapter.notifyItemMoved(bindingAdapterPosition, bindingAdapterPosition2);
                    return true;
                }
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
                boolean z;
                super.onSelectedChanged(viewHolder, i);
                if (i == 2) {
                    z = true;
                } else {
                    z = false;
                }
                ReorderStructureModel.this.isDragging = z;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
            }
        });
    }

    @Override // com.android.systemui.controls.management.model.StructureModel
    public final List getElements() {
        return this.elements;
    }
}
