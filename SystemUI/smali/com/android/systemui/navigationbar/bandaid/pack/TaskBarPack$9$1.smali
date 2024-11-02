.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

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
    .locals 63

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
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    .line 8
    .line 9
    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 10
    .line 11
    move-object/from16 v36, v15

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/16 v42, 0x0

    .line 16
    .line 17
    const/16 v43, 0x0

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/16 v44, 0x0

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/16 v16, 0xfff

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    move-object v2, v15

    .line 36
    move-object/from16 v62, v15

    .line 37
    .line 38
    move/from16 v15, v16

    .line 39
    .line 40
    move-object/from16 v16, v17

    .line 41
    .line 42
    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavBarHiddenByKnox()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    sget-object v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_TASKBAR_VIS_BY_KNOX:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    .line 52
    .line 53
    move-object/from16 v4, v62

    .line 54
    .line 55
    iput-object v3, v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    .line 56
    .line 57
    iput-boolean v2, v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 60
    .line 61
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    .line 62
    .line 63
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 64
    .line 65
    move-object/from16 v17, v4

    .line 66
    .line 67
    const/16 v18, 0x0

    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    const/16 v20, 0x0

    .line 72
    .line 73
    const/16 v21, 0x0

    .line 74
    .line 75
    const/16 v22, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    const/16 v24, 0x0

    .line 80
    .line 81
    const/16 v25, 0x0

    .line 82
    .line 83
    const/16 v26, 0x0

    .line 84
    .line 85
    const/16 v30, 0x0

    .line 86
    .line 87
    move/from16 v31, v30

    .line 88
    .line 89
    move/from16 v27, v30

    .line 90
    .line 91
    move/from16 v28, v30

    .line 92
    .line 93
    move/from16 v29, v30

    .line 94
    .line 95
    const/16 v32, 0x0

    .line 96
    .line 97
    const/16 v33, 0x0

    .line 98
    .line 99
    const/16 v34, 0x0

    .line 100
    .line 101
    const/16 v35, 0x0

    .line 102
    .line 103
    const/16 v37, 0x0

    .line 104
    .line 105
    const/16 v38, 0x0

    .line 106
    .line 107
    const/16 v39, 0x0

    .line 108
    .line 109
    const v40, 0x3bffff

    .line 110
    .line 111
    .line 112
    const/16 v41, 0x0

    .line 113
    .line 114
    invoke-direct/range {v17 .. v41}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 118
    .line 119
    .line 120
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 121
    .line 122
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 123
    .line 124
    .line 125
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;

    .line 126
    .line 127
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 128
    .line 129
    const/16 v40, 0x0

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    const/16 v45, 0x0

    .line 133
    .line 134
    const/16 v46, 0x0

    .line 135
    .line 136
    const/16 v47, 0x0

    .line 137
    .line 138
    const/16 v48, 0x0

    .line 139
    .line 140
    const/16 v49, 0x0

    .line 141
    .line 142
    if-eqz v2, :cond_0

    .line 143
    .line 144
    const/16 v2, 0x8

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    const/4 v2, 0x0

    .line 148
    :goto_0
    move/from16 v50, v2

    .line 149
    .line 150
    const/16 v51, 0x0

    .line 151
    .line 152
    const/16 v52, 0x0

    .line 153
    .line 154
    const/16 v53, 0x0

    .line 155
    .line 156
    const/16 v54, 0x0

    .line 157
    .line 158
    const/16 v55, 0x0

    .line 159
    .line 160
    const/16 v56, 0x0

    .line 161
    .line 162
    const/16 v57, 0x0

    .line 163
    .line 164
    const/16 v58, 0x0

    .line 165
    .line 166
    const/16 v59, 0x0

    .line 167
    .line 168
    const v60, 0x3fefff

    .line 169
    .line 170
    .line 171
    const/16 v61, 0x0

    .line 172
    .line 173
    move-object/from16 v37, v4

    .line 174
    .line 175
    move-object/from16 v38, v42

    .line 176
    .line 177
    move-object/from16 v39, v43

    .line 178
    .line 179
    move/from16 v42, v44

    .line 180
    .line 181
    move/from16 v43, v5

    .line 182
    .line 183
    move-object/from16 v44, v6

    .line 184
    .line 185
    invoke-direct/range {v37 .. v61}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 192
    .line 193
    .line 194
    return-object v1
.end method
