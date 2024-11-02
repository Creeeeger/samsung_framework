package androidx.picker.features.scs;

import androidx.picker.common.log.LogTag;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AbstractAppDataListFactory implements LogTag {
    public static final AnonymousClass1 EMPTY_FACTORY = new AbstractAppDataListFactory() { // from class: androidx.picker.features.scs.AbstractAppDataListFactory.1
        @Override // androidx.picker.features.scs.AbstractAppDataListFactory
        public final List getDataList() {
            return Collections.emptyList();
        }
    };

    public abstract List getDataList();

    @Override // androidx.picker.common.log.LogTag
    public String getLogTag() {
        return "AbstractAppDataListFactory";
    }
}
