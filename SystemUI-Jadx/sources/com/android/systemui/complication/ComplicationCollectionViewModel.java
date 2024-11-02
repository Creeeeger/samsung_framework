package com.android.systemui.complication;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.arch.core.util.Function;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import com.android.systemui.complication.ComplicationId;
import java.util.Collection;
import java.util.HashMap;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComplicationCollectionViewModel extends ViewModel {
    public final MediatorLiveData mComplications;
    public final ComplicationViewModelTransformer mTransformer;

    public ComplicationCollectionViewModel(ComplicationCollectionLiveData complicationCollectionLiveData, ComplicationViewModelTransformer complicationViewModelTransformer) {
        boolean z;
        final Function function = new Function() { // from class: com.android.systemui.complication.ComplicationCollectionViewModel$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                final ComplicationCollectionViewModel complicationCollectionViewModel = ComplicationCollectionViewModel.this;
                complicationCollectionViewModel.getClass();
                return (Collection) ((Collection) obj).stream().map(new java.util.function.Function() { // from class: com.android.systemui.complication.ComplicationCollectionViewModel$$ExternalSyntheticLambda1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        ComplicationCollectionViewModel complicationCollectionViewModel2 = ComplicationCollectionViewModel.this;
                        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj2);
                        ComplicationViewModelTransformer complicationViewModelTransformer2 = complicationCollectionViewModel2.mTransformer;
                        HashMap hashMap = complicationViewModelTransformer2.mComplicationIdMapping;
                        if (!hashMap.containsKey(null)) {
                            ComplicationId.Factory factory = complicationViewModelTransformer2.mComplicationIdFactory;
                            int i = factory.mNextId;
                            factory.mNextId = i + 1;
                            hashMap.put(null, new ComplicationId(i, 0));
                        }
                        ComplicationId complicationId = (ComplicationId) hashMap.get(null);
                        return (ComplicationViewModel) complicationViewModelTransformer2.mViewModelComponentFactory.create(null, complicationId).getViewModelProvider().get(ComplicationViewModel.class, complicationId.toString());
                    }
                }).collect(Collectors.toSet());
            }
        };
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        Observer observer = new Observer() { // from class: androidx.lifecycle.Transformations$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MediatorLiveData.this.setValue(function.apply(obj));
            }
        };
        MediatorLiveData.Source source = new MediatorLiveData.Source(complicationCollectionLiveData, observer);
        MediatorLiveData.Source source2 = (MediatorLiveData.Source) mediatorLiveData.mSources.putIfAbsent(complicationCollectionLiveData, source);
        if (source2 != null && source2.mObserver != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (source2 == null) {
            if (mediatorLiveData.mActiveCount > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                source.mLiveData.observeForever(source);
            }
        }
        this.mComplications = mediatorLiveData;
        this.mTransformer = complicationViewModelTransformer;
    }
}
