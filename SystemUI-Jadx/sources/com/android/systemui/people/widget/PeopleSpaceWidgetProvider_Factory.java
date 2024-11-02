package com.android.systemui.people.widget;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PeopleSpaceWidgetProvider_Factory implements Provider {
    public final Provider peopleSpaceWidgetManagerProvider;

    public PeopleSpaceWidgetProvider_Factory(Provider provider) {
        this.peopleSpaceWidgetManagerProvider = provider;
    }

    public static PeopleSpaceWidgetProvider newInstance(PeopleSpaceWidgetManager peopleSpaceWidgetManager) {
        return new PeopleSpaceWidgetProvider(peopleSpaceWidgetManager);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new PeopleSpaceWidgetProvider((PeopleSpaceWidgetManager) this.peopleSpaceWidgetManagerProvider.get());
    }
}
