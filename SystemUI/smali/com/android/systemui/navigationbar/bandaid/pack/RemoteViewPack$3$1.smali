.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

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
    .locals 55

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
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 10
    .line 11
    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 14
    .line 15
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;

    .line 16
    .line 17
    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 18
    .line 19
    move-object v4, v15

    .line 20
    const/16 v31, 0x0

    .line 21
    .line 22
    iget-object v7, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iget-object v8, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-boolean v9, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    const/16 v36, 0x0

    .line 30
    .line 31
    const/16 v37, 0x0

    .line 32
    .line 33
    const/16 v38, 0x0

    .line 34
    .line 35
    const/16 v39, 0x0

    .line 36
    .line 37
    const/16 v41, 0x0

    .line 38
    .line 39
    const/16 v42, 0x0

    .line 40
    .line 41
    const/16 v43, 0x0

    .line 42
    .line 43
    const/16 v44, 0x0

    .line 44
    .line 45
    const/16 v45, 0x0

    .line 46
    .line 47
    const/16 v46, 0x0

    .line 48
    .line 49
    const/16 v47, 0x0

    .line 50
    .line 51
    const/16 v48, 0x0

    .line 52
    .line 53
    const/16 v49, 0x0

    .line 54
    .line 55
    const/16 v50, 0x0

    .line 56
    .line 57
    iget v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    .line 58
    .line 59
    move/from16 v26, v5

    .line 60
    .line 61
    const v27, 0x1fffe3

    .line 62
    .line 63
    .line 64
    const/16 v53, 0x0

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    move-object/from16 v54, v15

    .line 75
    .line 76
    move/from16 v15, v16

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v19, 0x0

    .line 83
    .line 84
    const/16 v20, 0x0

    .line 85
    .line 86
    const/16 v21, 0x0

    .line 87
    .line 88
    const/16 v22, 0x0

    .line 89
    .line 90
    const/16 v23, 0x0

    .line 91
    .line 92
    const/16 v24, 0x0

    .line 93
    .line 94
    const/16 v25, 0x0

    .line 95
    .line 96
    const/16 v28, 0x0

    .line 97
    .line 98
    invoke-direct/range {v4 .. v28}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    move-object/from16 v4, v54

    .line 102
    .line 103
    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 104
    .line 105
    .line 106
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 107
    .line 108
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;

    .line 112
    .line 113
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 114
    .line 115
    move-object/from16 v29, v4

    .line 116
    .line 117
    const/16 v30, 0x0

    .line 118
    .line 119
    const/16 v32, 0x0

    .line 120
    .line 121
    const/16 v33, 0x0

    .line 122
    .line 123
    const/16 v34, 0x0

    .line 124
    .line 125
    iget v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

    .line 126
    .line 127
    move/from16 v35, v2

    .line 128
    .line 129
    const/16 v40, 0x0

    .line 130
    .line 131
    const/16 v51, 0x0

    .line 132
    .line 133
    const v52, 0x3fffdf

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v29 .. v53}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 143
    .line 144
    .line 145
    return-object v1
.end method
