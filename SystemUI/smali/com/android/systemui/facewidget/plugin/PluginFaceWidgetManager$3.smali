.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "PluginFaceWidgetManager"

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const-string v0, "Attach container started"

    .line 14
    .line 15
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 21
    .line 22
    if-eqz v0, :cond_d

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mEditModeContainer:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, p1

    .line 40
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v1, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 48
    .line 49
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mContainerView:Landroid/view/View;

    .line 50
    .line 51
    invoke-interface {v3, v1, v4, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->attachFaceWidgetContainer(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getContainerView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mContainerView:Landroid/view/View;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getContentsContainers()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 69
    .line 70
    invoke-virtual {v4, v1, v0, v3}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->initPlugin(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;Landroid/view/View;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x3

    .line 87
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x8

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->updateFaceWidgetArea()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 99
    .line 100
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    check-cast v1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/Runnable;

    .line 127
    .line 128
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    .line 133
    .line 134
    check-cast v0, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    .line 138
    .line 139
    :cond_5
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 146
    .line 147
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getAODStateProvider()Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p1, Lcom/android/systemui/doze/PluginAODManager;->mPluginAODStateProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 154
    .line 155
    iget-object v0, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 156
    .line 157
    if-nez v0, :cond_6

    .line 158
    .line 159
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 160
    .line 161
    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 165
    .line 166
    :cond_6
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 169
    .line 170
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 171
    .line 172
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 173
    .line 174
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda3;

    .line 188
    .line 189
    invoke-direct {v1, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 196
    .line 197
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 198
    .line 199
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    .line 200
    .line 201
    check-cast p1, Ljava/util/ArrayList;

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    .line 219
    .line 220
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_4

    .line 224
    .line 225
    :cond_8
    const-string v0, "Init Plugin Wrapper started"

    .line 226
    .line 227
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    new-instance v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;

    .line 243
    .line 244
    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    .line 248
    .line 249
    const-class v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 250
    .line 251
    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 259
    .line 260
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 261
    .line 262
    if-eqz p1, :cond_d

    .line 263
    .line 264
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setPluginFaceWidgetCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView$Callback;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    .line 270
    .line 271
    iput-object p1, v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 272
    .line 273
    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    .line 274
    .line 275
    iput-object p1, v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 276
    .line 277
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 278
    .line 279
    instance-of v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    .line 280
    .line 281
    if-eqz v2, :cond_9

    .line 282
    .line 283
    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    .line 284
    .line 285
    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    new-instance v3, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    .line 292
    .line 293
    iget-object v4, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 294
    .line 295
    invoke-interface {v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getPositionAlgorithm()Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    const-class v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    .line 300
    .line 301
    invoke-direct {v3, v5, v4, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    .line 309
    .line 310
    iput-object v3, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    .line 311
    .line 312
    invoke-virtual {p1, v2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->loadDimens(Landroid/content/res/Resources;)V

    .line 313
    .line 314
    .line 315
    :cond_9
    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    .line 316
    .line 317
    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 318
    .line 319
    invoke-interface {v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getNotificationController()Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const-class v3, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 324
    .line 325
    invoke-direct {p1, v3, v2, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 333
    .line 334
    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    .line 335
    .line 336
    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 337
    .line 338
    iput-object p1, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 339
    .line 340
    if-eqz p1, :cond_a

    .line 341
    .line 342
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->init(Ljava/util/function/Consumer;)V

    .line 343
    .line 344
    .line 345
    :cond_a
    iput-object v2, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    .line 346
    .line 347
    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    .line 348
    .line 349
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 350
    .line 351
    invoke-interface {v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getClockProvider()Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    const-class v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 356
    .line 357
    invoke-direct {p1, v2, v1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 365
    .line 366
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 367
    .line 368
    iput-object p1, v1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 369
    .line 370
    iget-object p1, v1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    .line 371
    .line 372
    check-cast p1, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_c

    .line 383
    .line 384
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    .line 389
    .line 390
    if-nez v2, :cond_b

    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_b
    iget-object v3, v1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 394
    .line 395
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    .line 396
    .line 397
    .line 398
    goto :goto_3

    .line 399
    :cond_c
    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    .line 400
    .line 401
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 402
    .line 403
    invoke-interface {v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getSecKeyguardSidePadding()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    const-class v2, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    .line 408
    .line 409
    invoke-direct {p1, v2, v1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    .line 417
    .line 418
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    .line 419
    .line 420
    :cond_d
    :goto_4
    return-void
.end method
