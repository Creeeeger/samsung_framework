package com.samsung.android.sume.core.filter.factory;

import com.samsung.android.sume.core.Def;
import com.samsung.android.sume.core.descriptor.MFDescriptor;
import com.samsung.android.sume.core.descriptor.ParallelDescriptor;
import com.samsung.android.sume.core.filter.AsyncFilter;
import com.samsung.android.sume.core.filter.MediaFilter;
import com.samsung.android.sume.core.filter.collection.ParallelDNCFilter;
import com.samsung.android.sume.core.filter.collection.ParallelFilter;
import com.samsung.android.sume.core.filter.collection.ParallelSharedFilter;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/* loaded from: classes4.dex */
public class ParallelFilterCreator implements MediaFilterCreator {
    @Override // com.samsung.android.sume.core.filter.factory.MediaFilterCreator
    public MediaFilter newFilter(final MediaFilterFactory factory, MFDescriptor descriptor, MediaFilter successor) {
        ParallelDescriptor desc = (ParallelDescriptor) descriptor;
        ParallelFilter parallelFilter = null;
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$sume$core$filter$collection$ParallelFilter$Type[desc.getParallelType().ordinal()]) {
            case 1:
                parallelFilter = new ParallelSharedFilter(desc, factory.getBufferChannelSupplier());
                break;
            case 2:
                parallelFilter = new ParallelDNCFilter(desc, factory.getBufferChannelSupplier());
                break;
        }
        Def.require(parallelFilter != null);
        Stream<MFDescriptor> stream = desc.getDescriptors().stream();
        Objects.requireNonNull(factory);
        final List<MediaFilter> successorFilters = (List) stream.map(new ParallelFilterCreator$$ExternalSyntheticLambda0(factory)).map(new Function() { // from class: com.samsung.android.sume.core.filter.factory.ParallelFilterCreator$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                MediaFilter newFilter;
                newFilter = MediaFilterFactory.this.newFilter(AsyncFilter.class, r2.getDescriptor(), (MediaFilter) obj);
                return newFilter;
            }
        }).collect(Collectors.toList());
        IntStream.range(0, successorFilters.size()).forEach(new IntConsumer() { // from class: com.samsung.android.sume.core.filter.factory.ParallelFilterCreator$$ExternalSyntheticLambda2
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                ((AsyncFilter) successorFilters.get(i)).setId(i);
            }
        });
        parallelFilter.addFilter(successorFilters);
        return parallelFilter;
    }

    /* renamed from: com.samsung.android.sume.core.filter.factory.ParallelFilterCreator$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$sume$core$filter$collection$ParallelFilter$Type;

        static {
            int[] iArr = new int[ParallelFilter.Type.values().length];
            $SwitchMap$com$samsung$android$sume$core$filter$collection$ParallelFilter$Type = iArr;
            try {
                iArr[ParallelFilter.Type.SHARED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$sume$core$filter$collection$ParallelFilter$Type[ParallelFilter.Type.DNC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }
}
