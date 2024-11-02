.class public final Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 8
    .line 9
    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 10
    .line 11
    move-object v2, v15

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    move/from16 v16, v17

    .line 27
    .line 28
    move-object/from16 v27, v15

    .line 29
    .line 30
    move/from16 v15, v17

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/16 v19, 0x0

    .line 37
    .line 38
    const/16 v20, 0x0

    .line 39
    .line 40
    const/16 v21, 0x0

    .line 41
    .line 42
    const/16 v22, 0x0

    .line 43
    .line 44
    const/16 v23, 0x0

    .line 45
    .line 46
    const/16 v24, 0x0

    .line 47
    .line 48
    const v25, 0x3fffff

    .line 49
    .line 50
    .line 51
    const/16 v26, 0x0

    .line 52
    .line 53
    invoke-direct/range {v2 .. v26}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 57
    .line 58
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 59
    .line 60
    iget v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/16 v3, 0x8

    .line 77
    .line 78
    if-ne v2, v3, :cond_0

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 83
    :goto_0
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;

    .line 84
    .line 85
    const-wide v4, 0x800000000L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4, v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;-><init>(JZ)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v2, v27

    .line 94
    .line 95
    iget-object v4, v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    .line 101
    .line 102
    invoke-direct {v3, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 106
    .line 107
    .line 108
    return-object v1
.end method
