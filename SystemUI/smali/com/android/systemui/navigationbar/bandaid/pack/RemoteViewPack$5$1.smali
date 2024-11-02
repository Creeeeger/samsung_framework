.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;
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
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

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
    .locals 29

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
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 10
    .line 11
    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    .line 12
    .line 13
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 14
    .line 15
    move-object v10, v3

    .line 16
    iget-object v4, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->requestClass:Ljava/lang/String;

    .line 17
    .line 18
    iget v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->position:I

    .line 19
    .line 20
    iget v6, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->priority:I

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->remoteViews:Landroid/widget/RemoteViews;

    .line 23
    .line 24
    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 28
    .line 29
    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;

    .line 30
    .line 31
    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 32
    .line 33
    move-object v3, v15

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    move-object/from16 v28, v15

    .line 47
    .line 48
    move/from16 v15, v16

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    const/16 v19, 0x0

    .line 55
    .line 56
    const/16 v20, 0x0

    .line 57
    .line 58
    const/16 v21, 0x0

    .line 59
    .line 60
    const/16 v22, 0x0

    .line 61
    .line 62
    const/16 v23, 0x0

    .line 63
    .line 64
    const/16 v24, 0x0

    .line 65
    .line 66
    const/16 v25, 0x0

    .line 67
    .line 68
    const v26, 0x3fffbf

    .line 69
    .line 70
    .line 71
    const/16 v27, 0x0

    .line 72
    .line 73
    invoke-direct/range {v3 .. v27}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    move-object/from16 v3, v28

    .line 77
    .line 78
    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 79
    .line 80
    .line 81
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 82
    .line 83
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 84
    .line 85
    .line 86
    return-object v1
.end method
