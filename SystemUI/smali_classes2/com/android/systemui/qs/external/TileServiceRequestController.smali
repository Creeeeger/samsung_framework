.class public final Lcom/android/systemui/qs/external/TileServiceRequestController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public dialogCanceller:Lkotlin/jvm/functions/Function1;

.field public final dialogCreator:Lkotlin/jvm/functions/Function0;

.field public final eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/external/TileServiceRequestController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            "Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    .line 6
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCreator:Lkotlin/jvm/functions/Function0;

    .line 7
    new-instance p1, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 8
    new-instance p5, Lcom/android/systemui/qs/external/TileServiceRequestController$1;

    invoke-direct {p5, p1}, Lcom/android/systemui/qs/external/TileServiceRequestController$1;-><init>(Lcom/android/systemui/qs/QSHost;)V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileServiceRequestController;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 7
    .line 8
    const-string/jumbo v2, "tile-service-add"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final requestTileAdd$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 20
    .line 21
    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    const/4 v9, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    move v1, v9

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v10

    .line 33
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object/from16 v5, p5

    .line 42
    .line 43
    invoke-interface {v5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ALREADY_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 47
    .line 48
    invoke-interface {v11, v0, v10, v8, v7}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    move-object/from16 v5, p5

    .line 53
    .line 54
    new-instance v12, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;

    .line 55
    .line 56
    new-instance v13, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;

    .line 57
    .line 58
    move-object v0, v13

    .line 59
    move-object/from16 v1, p0

    .line 60
    .line 61
    move-object/from16 v2, p1

    .line 62
    .line 63
    move-object v3, v8

    .line 64
    move-object v4, v7

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v12, v13}, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;-><init>(Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;

    .line 72
    .line 73
    move-object/from16 v1, p2

    .line 74
    .line 75
    move-object/from16 v2, p3

    .line 76
    .line 77
    move-object/from16 v3, p4

    .line 78
    .line 79
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;

    .line 83
    .line 84
    invoke-direct {v1, v12}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCreator:Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v3, v2

    .line 94
    check-cast v3, Lcom/android/systemui/qs/external/TileRequestDialog;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const v5, 0x7f0d0397

    .line 105
    .line 106
    .line 107
    const/4 v13, 0x0

    .line 108
    invoke-virtual {v4, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    move-object v14, v4

    .line 113
    check-cast v14, Landroid/view/ViewGroup;

    .line 114
    .line 115
    new-instance v4, Lcom/android/systemui/qs/tileimpl/SecQSTileView;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    new-instance v13, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-direct {v13, v15}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {v4, v5, v13, v10}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 131
    .line 132
    .line 133
    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 134
    .line 135
    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v13, v0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    .line 139
    .line 140
    iput-object v13, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 141
    .line 142
    iput-boolean v10, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 143
    .line 144
    iget-object v13, v0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    .line 145
    .line 146
    if-eqz v13, :cond_2

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    if-eqz v13, :cond_2

    .line 157
    .line 158
    new-instance v15, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    .line 159
    .line 160
    invoke-direct {v15, v13}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    const v13, 0x7f080675

    .line 165
    .line 166
    .line 167
    invoke-static {v13}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    :goto_1
    iput-object v15, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 172
    .line 173
    iget-object v13, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 174
    .line 175
    iput-object v13, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    const v15, 0x7f060037

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13, v15}, Landroid/content/Context;->getColor(I)I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    iput-object v13, v4, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    .line 193
    .line 194
    iput-object v13, v4, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecSubLabelColor:Landroid/content/res/ColorStateList;

    .line 195
    .line 196
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 197
    .line 198
    .line 199
    new-instance v5, Lcom/android/systemui/qs/external/TileRequestDialog$createTileView$1;

    .line 200
    .line 201
    invoke-direct {v5, v4}, Lcom/android/systemui/qs/external/TileRequestDialog$createTileView$1;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    const v13, 0x7f070eee

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    const/4 v13, -0x2

    .line 223
    invoke-virtual {v14, v4, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 227
    .line 228
    .line 229
    const/16 v18, 0x0

    .line 230
    .line 231
    const/16 v17, 0x0

    .line 232
    .line 233
    move-object v13, v3

    .line 234
    move/from16 v15, v17

    .line 235
    .line 236
    move/from16 v16, v17

    .line 237
    .line 238
    invoke-virtual/range {v13 .. v18}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 245
    .line 246
    .line 247
    new-instance v4, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$1;

    .line 248
    .line 249
    invoke-direct {v4, v12}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 253
    .line 254
    .line 255
    new-instance v4, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$2;

    .line 256
    .line 257
    invoke-direct {v4, v12}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$2;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 261
    .line 262
    .line 263
    const v4, 0x7f130f81

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    iget-object v0, v0, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    .line 274
    .line 275
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const v5, 0x7f130f6e

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    const v0, 0x7f130f6c

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    const v0, 0x7f130f6d

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    check-cast v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 302
    .line 303
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$1$1;

    .line 304
    .line 305
    invoke-direct {v0, v8, v2, v6}, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$1$1;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    .line 306
    .line 307
    .line 308
    iput-object v0, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_SHOWN:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 314
    .line 315
    invoke-interface {v11, v0, v10, v8, v7}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method
