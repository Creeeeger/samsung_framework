package androidx.lifecycle;

import android.app.Application;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ViewModelProvider {
    public final CreationExtras defaultCreationExtras;
    public final Factory factory;
    public final ViewModelStore store;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Factory {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Companion {
            public static final /* synthetic */ int $r8$clinit = 0;

            static {
                new Companion();
            }

            private Companion() {
            }
        }

        static {
            int i = Companion.$r8$clinit;
        }

        default ViewModel create(Class cls) {
            throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
        }

        default ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
            return create(cls);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class NewInstanceFactory implements Factory {
        public static final Companion Companion = new Companion(null);
        public static final Companion.ViewModelKeyImpl VIEW_MODEL_KEY = Companion.ViewModelKeyImpl.INSTANCE;
        public static NewInstanceFactory sInstance;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Companion {

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* loaded from: classes.dex */
            public final class ViewModelKeyImpl implements CreationExtras.Key {
                public static final ViewModelKeyImpl INSTANCE = new ViewModelKeyImpl();

                private ViewModelKeyImpl() {
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class cls) {
            try {
                return (ViewModel) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            }
        }
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory) {
        this(viewModelStore, factory, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ViewModel get(Class cls, String str) {
        ViewModel create;
        ViewModelStore viewModelStore = this.store;
        ViewModel viewModel = (ViewModel) viewModelStore.mMap.get(str);
        boolean isInstance = cls.isInstance(viewModel);
        Factory factory = this.factory;
        if (isInstance) {
            OnRequeryFactory onRequeryFactory = factory instanceof OnRequeryFactory ? (OnRequeryFactory) factory : null;
            if (onRequeryFactory != null) {
                onRequeryFactory.onRequery(viewModel);
            }
            return viewModel;
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultCreationExtras);
        mutableCreationExtras.set(NewInstanceFactory.VIEW_MODEL_KEY, str);
        try {
            create = factory.create(cls, mutableCreationExtras);
        } catch (AbstractMethodError unused) {
            create = factory.create(cls);
        }
        ViewModel viewModel2 = (ViewModel) viewModelStore.mMap.put(str, create);
        if (viewModel2 != null) {
            viewModel2.onCleared();
        }
        return create;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AndroidViewModelFactory extends NewInstanceFactory {
        public static AndroidViewModelFactory sInstance;
        public final Application application;
        public static final Companion Companion = new Companion(null);
        public static final Companion.ApplicationKeyImpl APPLICATION_KEY = Companion.ApplicationKeyImpl.INSTANCE;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Companion {

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* loaded from: classes.dex */
            public final class ApplicationKeyImpl implements CreationExtras.Key {
                public static final ApplicationKeyImpl INSTANCE = new ApplicationKeyImpl();

                private ApplicationKeyImpl() {
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private AndroidViewModelFactory(Application application, int i) {
            this.application = application;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
            if (this.application != null) {
                return create(cls);
            }
            Application application = (Application) mutableCreationExtras.get(APPLICATION_KEY);
            if (application != null) {
                return create(cls, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return super.create(cls);
            }
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        public AndroidViewModelFactory(Application application) {
            this(application, 0);
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls) {
            Application application = this.application;
            if (application != null) {
                return create(cls, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        public final ViewModel create(Class cls, Application application) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    return (ViewModel) cls.getConstructor(Application.class).newInstance(application);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                }
            }
            return super.create(cls);
        }
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras) {
        this.store = viewModelStore;
        this.factory = factory;
        this.defaultCreationExtras = creationExtras;
    }

    public /* synthetic */ ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewModelStore, factory, (i & 4) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ViewModelProvider(androidx.lifecycle.ViewModelStoreOwner r4) {
        /*
            r3 = this;
            androidx.lifecycle.ViewModelStore r0 = r4.getViewModelStore()
            androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory$Companion r1 = androidx.lifecycle.ViewModelProvider.AndroidViewModelFactory.Companion
            r1.getClass()
            boolean r1 = r4 instanceof androidx.lifecycle.HasDefaultViewModelProviderFactory
            if (r1 == 0) goto L15
            r2 = r4
            androidx.lifecycle.HasDefaultViewModelProviderFactory r2 = (androidx.lifecycle.HasDefaultViewModelProviderFactory) r2
            androidx.lifecycle.ViewModelProvider$Factory r2 = r2.getDefaultViewModelProviderFactory()
            goto L2a
        L15:
            androidx.lifecycle.ViewModelProvider$NewInstanceFactory$Companion r2 = androidx.lifecycle.ViewModelProvider.NewInstanceFactory.Companion
            r2.getClass()
            androidx.lifecycle.ViewModelProvider$NewInstanceFactory r2 = androidx.lifecycle.ViewModelProvider.NewInstanceFactory.sInstance
            if (r2 != 0) goto L25
            androidx.lifecycle.ViewModelProvider$NewInstanceFactory r2 = new androidx.lifecycle.ViewModelProvider$NewInstanceFactory
            r2.<init>()
            androidx.lifecycle.ViewModelProvider.NewInstanceFactory.sInstance = r2
        L25:
            androidx.lifecycle.ViewModelProvider$NewInstanceFactory r2 = androidx.lifecycle.ViewModelProvider.NewInstanceFactory.sInstance
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
        L2a:
            if (r1 == 0) goto L33
            androidx.lifecycle.HasDefaultViewModelProviderFactory r4 = (androidx.lifecycle.HasDefaultViewModelProviderFactory) r4
            androidx.lifecycle.viewmodel.MutableCreationExtras r4 = r4.getDefaultViewModelCreationExtras()
            goto L35
        L33:
            androidx.lifecycle.viewmodel.CreationExtras$Empty r4 = androidx.lifecycle.viewmodel.CreationExtras.Empty.INSTANCE
        L35:
            r3.<init>(r0, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.ViewModelProvider.<init>(androidx.lifecycle.ViewModelStoreOwner):void");
    }

    public final ViewModel get(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return get(cls, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ViewModelProvider(androidx.lifecycle.ViewModelStoreOwner r3, androidx.lifecycle.ViewModelProvider.Factory r4) {
        /*
            r2 = this;
            androidx.lifecycle.ViewModelStore r0 = r3.getViewModelStore()
            boolean r1 = r3 instanceof androidx.lifecycle.HasDefaultViewModelProviderFactory
            if (r1 == 0) goto Lf
            androidx.lifecycle.HasDefaultViewModelProviderFactory r3 = (androidx.lifecycle.HasDefaultViewModelProviderFactory) r3
            androidx.lifecycle.viewmodel.MutableCreationExtras r3 = r3.getDefaultViewModelCreationExtras()
            goto L11
        Lf:
            androidx.lifecycle.viewmodel.CreationExtras$Empty r3 = androidx.lifecycle.viewmodel.CreationExtras.Empty.INSTANCE
        L11:
            r2.<init>(r0, r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.ViewModelProvider.<init>(androidx.lifecycle.ViewModelStoreOwner, androidx.lifecycle.ViewModelProvider$Factory):void");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class OnRequeryFactory {
        public void onRequery(ViewModel viewModel) {
        }
    }
}
