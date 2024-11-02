.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;
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
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

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
    .locals 33

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
    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 10
    .line 11
    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 14
    .line 15
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 16
    .line 17
    const-class v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 18
    .line 19
    iget v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 20
    .line 21
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-object v4, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v4, v6

    .line 47
    :goto_0
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v6, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isExist(ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget-object v7, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    .line 62
    .line 63
    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 64
    .line 65
    move-object v8, v15

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

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
    move-object v5, v15

    .line 75
    move-object/from16 v15, v16

    .line 76
    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const/16 v19, 0x0

    .line 84
    .line 85
    const/16 v20, 0x0

    .line 86
    .line 87
    const/16 v21, 0x0

    .line 88
    .line 89
    const/16 v22, 0x0

    .line 90
    .line 91
    const/16 v23, 0x0

    .line 92
    .line 93
    const/16 v24, 0x0

    .line 94
    .line 95
    const/16 v25, 0x0

    .line 96
    .line 97
    const/16 v26, 0x0

    .line 98
    .line 99
    invoke-static {v1, v2, v6}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->access$makeRemoteViewEventToRemove(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;Ljava/lang/String;I)Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 100
    .line 101
    .line 102
    move-result-object v27

    .line 103
    const/16 v28, 0x0

    .line 104
    .line 105
    const/16 v29, 0x0

    .line 106
    .line 107
    const/16 v30, 0x0

    .line 108
    .line 109
    const v31, 0x3bffff

    .line 110
    .line 111
    .line 112
    const/16 v32, 0x0

    .line 113
    .line 114
    invoke-direct/range {v8 .. v32}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 118
    .line 119
    .line 120
    move-object v5, v7

    .line 121
    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 122
    .line 123
    invoke-virtual {v5, v0, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 124
    .line 125
    .line 126
    :cond_2
    const/4 v4, 0x1

    .line 127
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isExist(ILjava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    .line 134
    .line 135
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 136
    .line 137
    move-object v8, v4

    .line 138
    const/4 v9, 0x0

    .line 139
    const/4 v10, 0x0

    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    const/4 v13, 0x0

    .line 143
    const/4 v14, 0x0

    .line 144
    const/4 v15, 0x0

    .line 145
    const/16 v16, 0x0

    .line 146
    .line 147
    const/16 v17, 0x0

    .line 148
    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    const/16 v19, 0x0

    .line 152
    .line 153
    const/16 v20, 0x0

    .line 154
    .line 155
    const/16 v21, 0x0

    .line 156
    .line 157
    const/16 v22, 0x0

    .line 158
    .line 159
    const/16 v23, 0x0

    .line 160
    .line 161
    const/16 v24, 0x0

    .line 162
    .line 163
    const/16 v25, 0x0

    .line 164
    .line 165
    const/16 v26, 0x0

    .line 166
    .line 167
    const/4 v5, 0x1

    .line 168
    invoke-static {v1, v2, v5}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->access$makeRemoteViewEventToRemove(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;Ljava/lang/String;I)Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 169
    .line 170
    .line 171
    move-result-object v27

    .line 172
    const/16 v28, 0x0

    .line 173
    .line 174
    const/16 v29, 0x0

    .line 175
    .line 176
    const/16 v30, 0x0

    .line 177
    .line 178
    const v31, 0x3bffff

    .line 179
    .line 180
    .line 181
    const/16 v32, 0x0

    .line 182
    .line 183
    invoke-direct/range {v8 .. v32}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 187
    .line 188
    .line 189
    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 190
    .line 191
    invoke-virtual {v7, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 192
    .line 193
    .line 194
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 195
    .line 196
    return-object v0
.end method
