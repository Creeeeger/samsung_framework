package com.android.systemui.complication.dagger;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import com.android.systemui.complication.ComplicationCollectionViewModel;
import com.android.systemui.complication.dagger.DaggerViewModelProviderFactory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComplicationModule_ProvidesComplicationCollectionViewModelFactory implements Provider {
    public final Provider storeProvider;
    public final Provider viewModelProvider;

    public ComplicationModule_ProvidesComplicationCollectionViewModelFactory(Provider provider, Provider provider2) {
        this.storeProvider = provider;
        this.viewModelProvider = provider2;
    }

    public static ComplicationCollectionViewModel providesComplicationCollectionViewModel(ViewModelStore viewModelStore, final ComplicationCollectionViewModel complicationCollectionViewModel) {
        ComplicationCollectionViewModel complicationCollectionViewModel2 = (ComplicationCollectionViewModel) new ViewModelProvider(viewModelStore, new DaggerViewModelProviderFactory(new DaggerViewModelProviderFactory.ViewModelCreator() { // from class: com.android.systemui.complication.dagger.ComplicationModule$$ExternalSyntheticLambda0
            @Override // com.android.systemui.complication.dagger.DaggerViewModelProviderFactory.ViewModelCreator
            public final ViewModel create() {
                return ComplicationCollectionViewModel.this;
            }
        })).get(ComplicationCollectionViewModel.class);
        Preconditions.checkNotNullFromProvides(complicationCollectionViewModel2);
        return complicationCollectionViewModel2;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesComplicationCollectionViewModel((ViewModelStore) this.storeProvider.get(), (ComplicationCollectionViewModel) this.viewModelProvider.get());
    }
}
