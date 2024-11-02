package com.android.systemui.controls.controller;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsControllerImpl$replaceFavoritesForStructure$1 implements Runnable {
    public final /* synthetic */ StructureInfo $structureInfo;
    public final /* synthetic */ ControlsControllerImpl this$0;

    public ControlsControllerImpl$replaceFavoritesForStructure$1(StructureInfo structureInfo, ControlsControllerImpl controlsControllerImpl) {
        this.$structureInfo = structureInfo;
        this.this$0 = controlsControllerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Favorites favorites = Favorites.INSTANCE;
        StructureInfo structureInfo = this.$structureInfo;
        favorites.getClass();
        Favorites.replaceControls(structureInfo);
        this.this$0.persistenceWrapper.storeFavorites(Favorites.getAllStructures());
    }
}
