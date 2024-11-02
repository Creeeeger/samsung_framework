package androidx.picker.features.composable.custom;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.picker.features.composable.ComposableFrame;
import androidx.picker.features.composable.ComposableType;
import androidx.picker.features.composable.DefaultComposableStrategy;
import androidx.picker.features.composable.widget.WidgetFrame;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.ViewData;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CustomStrategy extends DefaultComposableStrategy {
    private final Lazy customWidgetList$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: androidx.picker.features.composable.custom.CustomStrategy$customWidgetList$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CustomStrategy.this.getCustomFrameList();
        }
    });
    private final Lazy widgetFrameList$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: androidx.picker.features.composable.custom.CustomStrategy$widgetFrameList$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List customWidgetList;
            List list = ArraysKt___ArraysKt.toList(WidgetFrame.values());
            customWidgetList = CustomStrategy.this.getCustomWidgetList();
            return CollectionsKt___CollectionsKt.plus((Iterable) customWidgetList, (Collection) list);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Object> getCustomWidgetList() {
        return (List) this.customWidgetList$delegate.getValue();
    }

    public abstract List<Object> getCustomFrameList();

    @Override // androidx.picker.features.composable.DefaultComposableStrategy, androidx.picker.features.composable.ComposableStrategy
    public List<ComposableFrame> getWidgetFrameList() {
        return (List) this.widgetFrameList$delegate.getValue();
    }

    @Override // androidx.picker.features.composable.DefaultComposableStrategy, androidx.picker.features.composable.ComposableStrategy
    public ComposableType selectComposableType(ViewData viewData) {
        if (!(viewData instanceof AppInfoViewData)) {
            return super.selectComposableType(viewData);
        }
        Iterator<T> it = getCustomWidgetList().iterator();
        if (!it.hasNext()) {
            return super.selectComposableType(viewData);
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
        throw null;
    }
}
