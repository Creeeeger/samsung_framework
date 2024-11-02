package androidx.picker.loader.select;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class CategorySelectableItem extends SelectableItem implements DisposableHandle {
    private DisposableHandle disposableHandle;
    private final List<SelectableItem> selectableItemList;

    public /* synthetic */ CategorySelectableItem(List list, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? new Function1() { // from class: androidx.picker.loader.select.CategorySelectableItem.1
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                ((Boolean) obj).booleanValue();
                return Unit.INSTANCE;
            }
        } : function1);
    }

    private final void bindSelectableItemList() {
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
        final DisposableHandle registerAfterChangeUpdateListener = registerAfterChangeUpdateListener(new Function1() { // from class: androidx.picker.loader.select.CategorySelectableItem$bindSelectableItemList$disposable1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List list;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                list = CategorySelectableItem.this.selectableItemList;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((SelectableItem) it.next()).setValueSilence(Boolean.valueOf(booleanValue));
                }
                return Unit.INSTANCE;
            }
        });
        List<SelectableItem> list = this.selectableItemList;
        final ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((SelectableItem) it.next()).registerAfterChangeUpdateListener(new Function1() { // from class: androidx.picker.loader.select.CategorySelectableItem$bindSelectableItemList$disposableHandleList$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Boolean) obj).booleanValue();
                    CategorySelectableItem.this.updateAllAppsStatus();
                    return Unit.INSTANCE;
                }
            }));
        }
        this.disposableHandle = new DisposableHandle() { // from class: androidx.picker.loader.select.CategorySelectableItem$$ExternalSyntheticLambda0
            @Override // kotlinx.coroutines.DisposableHandle
            public final void dispose() {
                CategorySelectableItem.m40bindSelectableItemList$lambda3(DisposableHandle.this, arrayList);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindSelectableItemList$lambda-3, reason: not valid java name */
    public static final void m40bindSelectableItemList$lambda3(DisposableHandle disposableHandle, List list) {
        disposableHandle.dispose();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((DisposableHandle) it.next()).dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAllAppsStatus() {
        if (this.selectableItemList.isEmpty()) {
            return;
        }
        List<SelectableItem> list = this.selectableItemList;
        boolean z = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (!((SelectableItem) it.next()).isSelected()) {
                    z = false;
                    break;
                }
            }
        }
        setValueSilence(Boolean.valueOf(z));
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CategorySelectableItem(java.util.List<? extends androidx.picker.loader.select.SelectableItem> r4, kotlin.jvm.functions.Function1 r5) {
        /*
            r3 = this;
            boolean r0 = r4.isEmpty()
            r1 = 1
            if (r0 == 0) goto L8
            goto L1f
        L8:
            java.util.Iterator r0 = r4.iterator()
        Lc:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L1f
            java.lang.Object r2 = r0.next()
            androidx.picker.loader.select.SelectableItem r2 = (androidx.picker.loader.select.SelectableItem) r2
            boolean r2 = r2.isSelected()
            if (r2 != 0) goto Lc
            r1 = 0
        L1f:
            androidx.picker.features.observable.BooleanState r0 = new androidx.picker.features.observable.BooleanState
            r0.<init>(r1)
            r3.<init>(r0, r5)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>(r4)
            r3.selectableItemList = r5
            r3.bindSelectableItemList()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.loader.select.CategorySelectableItem.<init>(java.util.List, kotlin.jvm.functions.Function1):void");
    }
}
