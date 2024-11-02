package androidx.picker.controller.strategy;

import androidx.picker.model.appdata.GroupAppData;
import androidx.picker.model.viewdata.GroupTitleViewData;
import androidx.picker.repository.ViewDataRepository;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class LimitedSelectStrategy$parseAppDataTask$1 extends FunctionReferenceImpl implements Function1 {
    public LimitedSelectStrategy$parseAppDataTask$1(Object obj) {
        super(1, obj, ViewDataRepository.class, "createGroupTitleViewData", "createGroupTitleViewData(Landroidx/picker/model/appdata/GroupAppData;)Landroidx/picker/model/viewdata/GroupTitleViewData;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((ViewDataRepository) this.receiver).getClass();
        return new GroupTitleViewData((GroupAppData) obj, null, 2, null);
    }
}
