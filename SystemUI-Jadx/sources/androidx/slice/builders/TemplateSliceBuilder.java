package androidx.slice.builders;

import android.content.Context;
import android.net.Uri;
import androidx.slice.Slice;
import androidx.slice.SliceConvert;
import androidx.slice.SliceManagerWrapper;
import androidx.slice.SliceProvider;
import androidx.slice.SliceSpec;
import androidx.slice.builders.impl.TemplateBuilderImpl;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class TemplateSliceBuilder {
    public final Slice.Builder mBuilder;
    public final List mSpecs;

    public TemplateSliceBuilder(TemplateBuilderImpl templateBuilderImpl) {
        this.mBuilder = null;
        setImpl(templateBuilderImpl);
    }

    public final boolean checkCompatible(SliceSpec sliceSpec) {
        boolean z;
        List list = this.mSpecs;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            SliceSpec sliceSpec2 = (SliceSpec) list.get(i);
            if (sliceSpec2.mType.equals(sliceSpec.mType) && sliceSpec2.mRevision >= sliceSpec.mRevision) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public TemplateBuilderImpl selectImpl() {
        return null;
    }

    public abstract void setImpl(TemplateBuilderImpl templateBuilderImpl);

    public TemplateSliceBuilder(Context context, Uri uri) {
        ArrayList arrayList;
        this.mBuilder = new Slice.Builder(uri);
        if (SliceProvider.sSpecs != null) {
            arrayList = new ArrayList(SliceProvider.sSpecs);
        } else {
            arrayList = new ArrayList(SliceConvert.wrap(new SliceManagerWrapper(context).mManager.getPinnedSpecs(uri)));
        }
        this.mSpecs = arrayList;
        TemplateBuilderImpl selectImpl = selectImpl();
        if (selectImpl != null) {
            setImpl(selectImpl);
            return;
        }
        throw new IllegalArgumentException("No valid specs found");
    }
}
