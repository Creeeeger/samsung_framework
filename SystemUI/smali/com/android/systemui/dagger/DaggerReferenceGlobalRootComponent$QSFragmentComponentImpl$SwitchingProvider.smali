.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field public final id:I

.field public final qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->id:I

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    .line 14
    .line 15
    throw v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSCinemaProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/cinema/QSCinemaLogger;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaProvider;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    new-instance v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 39
    .line 40
    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/QSFragment;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickQSPanel()Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v6, v2

    .line 55
    check-cast v6, Lcom/android/systemui/qs/SecQSPanelController;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 60
    .line 61
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    move-object v7, v2

    .line 66
    check-cast v7, Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 71
    .line 72
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v8, v0

    .line 77
    check-cast v8, Lcom/android/systemui/qs/QSTileHost;

    .line 78
    .line 79
    move-object v2, v1

    .line 80
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/SecQuickQSPanel;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :pswitch_2
    new-instance v0, Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/android/systemui/qs/cinema/QSCinemaDirector;-><init>()V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :pswitch_3
    new-instance v1, Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSCinemaDirectorProvider:Ljavax/inject/Provider;

    .line 95
    .line 96
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    .line 101
    .line 102
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSCinemaProvider:Ljavax/inject/Provider;

    .line 105
    .line 106
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSCinemaLoggerProvider:Ljavax/inject/Provider;

    .line 115
    .line 116
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 121
    .line 122
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/qs/cinema/QSCinemaCompany;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaDirector;Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/qs/cinema/QSCinemaLogger;)V

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSButtonsContainer()Lcom/android/systemui/qs/buttons/QSButtonsContainer;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 135
    .line 136
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 145
    .line 146
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelController;

    .line 151
    .line 152
    new-instance v3, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    .line 153
    .line 154
    invoke-direct {v3, v1, v2, v0}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;-><init>(Lcom/android/systemui/qs/buttons/QSButtonsContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/SecQSPanelController;)V

    .line 155
    .line 156
    .line 157
    return-object v3

    .line 158
    :pswitch_5
    new-instance v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 159
    .line 160
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 161
    .line 162
    iget-object v5, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 163
    .line 164
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 165
    .line 166
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qsExpandAnimatorProvider:Ljavax/inject/Provider;

    .line 167
    .line 168
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 173
    .line 174
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barControllerProvider:Ljavax/inject/Provider;

    .line 175
    .line 176
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move-object v7, v2

    .line 181
    check-cast v7, Lcom/android/systemui/qs/bar/BarController;

    .line 182
    .line 183
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 186
    .line 187
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object v8, v2

    .line 192
    check-cast v8, Lcom/android/systemui/qs/SecQSPanelController;

    .line 193
    .line 194
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 195
    .line 196
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 197
    .line 198
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    move-object v9, v2

    .line 203
    check-cast v9, Lcom/android/systemui/qs/QSTileHost;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 208
    .line 209
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object v10, v0

    .line 214
    check-cast v10, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 215
    .line 216
    move-object v4, v1

    .line 217
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 218
    .line 219
    .line 220
    return-object v1

    .line 221
    :pswitch_6
    new-instance v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 222
    .line 223
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 224
    .line 225
    iget-object v12, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 226
    .line 227
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 228
    .line 229
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 230
    .line 231
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    move-object v13, v2

    .line 236
    check-cast v13, Lcom/android/systemui/qs/SecQSPanelController;

    .line 237
    .line 238
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 239
    .line 240
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barControllerProvider:Ljavax/inject/Provider;

    .line 241
    .line 242
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object v14, v2

    .line 247
    check-cast v14, Lcom/android/systemui/qs/bar/BarController;

    .line 248
    .line 249
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 250
    .line 251
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 252
    .line 253
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    move-object v15, v2

    .line 258
    check-cast v15, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 259
    .line 260
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 261
    .line 262
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 263
    .line 264
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    move-object/from16 v16, v2

    .line 269
    .line 270
    check-cast v16, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 271
    .line 272
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideKeyguardEditModeControllerProvider:Ljavax/inject/Provider;

    .line 275
    .line 276
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    move-object/from16 v17, v0

    .line 281
    .line 282
    check-cast v17, Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 283
    .line 284
    move-object v11, v1

    .line 285
    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/qs/animator/QsExpandAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V

    .line 286
    .line 287
    .line 288
    return-object v1

    .line 289
    :pswitch_7
    new-instance v1, Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 290
    .line 291
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 292
    .line 293
    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 294
    .line 295
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 296
    .line 297
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barControllerProvider:Ljavax/inject/Provider;

    .line 298
    .line 299
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    move-object v4, v2

    .line 304
    check-cast v4, Lcom/android/systemui/qs/bar/BarController;

    .line 305
    .line 306
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 307
    .line 308
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 309
    .line 310
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    move-object v5, v2

    .line 315
    check-cast v5, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 316
    .line 317
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 318
    .line 319
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 320
    .line 321
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    move-object v6, v2

    .line 326
    check-cast v6, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 327
    .line 328
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 329
    .line 330
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 331
    .line 332
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    move-object v7, v2

    .line 337
    check-cast v7, Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 338
    .line 339
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 340
    .line 341
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 342
    .line 343
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    move-object v8, v0

    .line 348
    check-cast v8, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 349
    .line 350
    move-object v2, v1

    .line 351
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/qs/animator/QsOpenAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 352
    .line 353
    .line 354
    return-object v1

    .line 355
    :pswitch_8
    new-instance v0, Lcom/android/systemui/qs/QSSquishinessController;

    .line 356
    .line 357
    invoke-direct {v0}, Lcom/android/systemui/qs/QSSquishinessController;-><init>()V

    .line 358
    .line 359
    .line 360
    return-object v0

    .line 361
    :pswitch_9
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter;

    .line 362
    .line 363
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 364
    .line 365
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSThemedContextContext()Landroid/content/Context;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 370
    .line 371
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 372
    .line 373
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Lcom/android/systemui/qs/QSHost;

    .line 378
    .line 379
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 380
    .line 381
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 382
    .line 383
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lcom/android/internal/logging/UiEventLogger;

    .line 388
    .line 389
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/UiEventLogger;)V

    .line 390
    .line 391
    .line 392
    return-object v1

    .line 393
    :pswitch_a
    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 394
    .line 395
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 396
    .line 397
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 398
    .line 399
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 400
    .line 401
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 402
    .line 403
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    .line 408
    .line 409
    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 410
    .line 411
    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 412
    .line 413
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 418
    .line 419
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 420
    .line 421
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 422
    .line 423
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 428
    .line 429
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 430
    .line 431
    .line 432
    return-object v1

    .line 433
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 434
    .line 435
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const v1, 0x7f0a0849

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 447
    .line 448
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    return-object v0

    .line 452
    :pswitch_c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 453
    .line 454
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->providesQSCutomizerProvider:Ljavax/inject/Provider;

    .line 455
    .line 456
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    move-object v2, v1

    .line 461
    check-cast v2, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 462
    .line 463
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 464
    .line 465
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->tileQueryHelperProvider:Ljavax/inject/Provider;

    .line 466
    .line 467
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    move-object v3, v1

    .line 472
    check-cast v3, Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 473
    .line 474
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 475
    .line 476
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 477
    .line 478
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    move-object v4, v1

    .line 483
    check-cast v4, Lcom/android/systemui/qs/QSHost;

    .line 484
    .line 485
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 486
    .line 487
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->tileAdapterProvider:Ljavax/inject/Provider;

    .line 488
    .line 489
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    move-object v5, v1

    .line 494
    check-cast v5, Lcom/android/systemui/qs/customize/TileAdapter;

    .line 495
    .line 496
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 497
    .line 498
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 499
    .line 500
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    move-object v6, v1

    .line 505
    check-cast v6, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 506
    .line 507
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 508
    .line 509
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 510
    .line 511
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    move-object v7, v1

    .line 516
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 517
    .line 518
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 519
    .line 520
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 521
    .line 522
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    move-object v8, v1

    .line 527
    check-cast v8, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 528
    .line 529
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 530
    .line 531
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 532
    .line 533
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    move-object v9, v1

    .line 538
    check-cast v9, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 539
    .line 540
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 541
    .line 542
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 543
    .line 544
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    move-object v10, v0

    .line 549
    check-cast v10, Lcom/android/internal/logging/UiEventLogger;

    .line 550
    .line 551
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->newInstance(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    return-object v0

    .line 556
    :pswitch_d
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 557
    .line 558
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 563
    .line 564
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 565
    .line 566
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    check-cast v2, Lcom/android/systemui/qs/QSTileHost;

    .line 571
    .line 572
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 573
    .line 574
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 575
    .line 576
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    .line 581
    .line 582
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 583
    .line 584
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 585
    .line 586
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 591
    .line 592
    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesHeaderQSPanelHostFactory;->providesHeaderQSPanelHost(Landroid/view/View;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/QSPanelHost;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    return-object v0

    .line 597
    :pswitch_e
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 598
    .line 599
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickQSPanel()Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 604
    .line 605
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 606
    .line 607
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    move-object v3, v1

    .line 612
    check-cast v3, Lcom/android/systemui/qs/QSHost;

    .line 613
    .line 614
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 615
    .line 616
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 617
    .line 618
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    move-object v4, v1

    .line 623
    check-cast v4, Lcom/android/internal/logging/MetricsLogger;

    .line 624
    .line 625
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 626
    .line 627
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 628
    .line 629
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    move-object v5, v1

    .line 634
    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    .line 635
    .line 636
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 637
    .line 638
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSLogger()Lcom/android/systemui/qs/logging/QSLogger;

    .line 639
    .line 640
    .line 641
    move-result-object v6

    .line 642
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 643
    .line 644
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 645
    .line 646
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    move-object v7, v1

    .line 651
    check-cast v7, Lcom/android/systemui/dump/DumpManager;

    .line 652
    .line 653
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 654
    .line 655
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->providesHeaderQSPanelHostProvider:Ljavax/inject/Provider;

    .line 656
    .line 657
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    move-object v8, v1

    .line 662
    check-cast v8, Lcom/android/systemui/qs/QSPanelHost;

    .line 663
    .line 664
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 665
    .line 666
    iget-object v9, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barControllerProvider:Ljavax/inject/Provider;

    .line 667
    .line 668
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 669
    .line 670
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 671
    .line 672
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    move-object v10, v0

    .line 677
    check-cast v10, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 678
    .line 679
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/SecQuickQSPanelController_Factory;->newInstance(Lcom/android/systemui/qs/SecQuickQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    return-object v0

    .line 684
    :pswitch_f
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 685
    .line 686
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickStatusBarHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 691
    .line 692
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 693
    .line 694
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    move-object v4, v1

    .line 699
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 700
    .line 701
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 702
    .line 703
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    .line 704
    .line 705
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    move-object v5, v1

    .line 710
    check-cast v5, Lcom/android/systemui/demomode/DemoModeController;

    .line 711
    .line 712
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 713
    .line 714
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 715
    .line 716
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    move-object v6, v1

    .line 721
    check-cast v6, Lcom/android/systemui/qs/SecQuickQSPanelController;

    .line 722
    .line 723
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 724
    .line 725
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 726
    .line 727
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    move-object v7, v1

    .line 732
    check-cast v7, Lcom/android/systemui/flags/FeatureFlags;

    .line 733
    .line 734
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 735
    .line 736
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->factoryProvider7:Ljavax/inject/Provider;

    .line 737
    .line 738
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    move-object v8, v1

    .line 743
    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;

    .line 744
    .line 745
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 746
    .line 747
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 748
    .line 749
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    move-object v9, v0

    .line 754
    check-cast v9, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 755
    .line 756
    new-instance v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    .line 757
    .line 758
    move-object v2, v0

    .line 759
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 760
    .line 761
    .line 762
    return-object v0

    .line 763
    :pswitch_10
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 764
    .line 765
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 768
    .line 769
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 770
    .line 771
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    new-instance v2, Lcom/android/systemui/qs/QSButtonGridController;

    .line 776
    .line 777
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/qs/QSButtonGridController;-><init>(Landroid/content/Context;Ldagger/Lazy;)V

    .line 778
    .line 779
    .line 780
    return-object v2

    .line 781
    :pswitch_11
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 782
    .line 783
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 784
    .line 785
    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 786
    .line 787
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 788
    .line 789
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 790
    .line 791
    .line 792
    move-result-object v5

    .line 793
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 794
    .line 795
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 796
    .line 797
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    move-object v6, v2

    .line 802
    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    .line 803
    .line 804
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 805
    .line 806
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 807
    .line 808
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    move-object v7, v2

    .line 813
    check-cast v7, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 814
    .line 815
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 816
    .line 817
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->mediaBluetoothHelperProvider:Ljavax/inject/Provider;

    .line 818
    .line 819
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    move-object v8, v0

    .line 824
    check-cast v8, Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 825
    .line 826
    new-instance v0, Lcom/android/systemui/qs/bar/BudsBar;

    .line 827
    .line 828
    move-object v3, v0

    .line 829
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/bar/BudsBar;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaBluetoothHelper;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->injectBudsBar(Lcom/android/systemui/qs/bar/BudsBar;)Lcom/android/systemui/qs/bar/BudsBar;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    return-object v0

    .line 837
    :pswitch_12
    new-instance v7, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 838
    .line 839
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 840
    .line 841
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 842
    .line 843
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 844
    .line 845
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 846
    .line 847
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 852
    .line 853
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 854
    .line 855
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    move-object v4, v1

    .line 860
    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    .line 861
    .line 862
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 863
    .line 864
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 865
    .line 866
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    move-object v5, v1

    .line 871
    check-cast v5, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 872
    .line 873
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 874
    .line 875
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->panelInteractor()Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 876
    .line 877
    .line 878
    move-result-object v6

    .line 879
    move-object v1, v7

    .line 880
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V

    .line 881
    .line 882
    .line 883
    return-object v7

    .line 884
    :pswitch_13
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 885
    .line 886
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSThemedContextLayoutInflater()Landroid/view/LayoutInflater;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    const/4 v1, 0x0

    .line 891
    const/4 v2, 0x0

    .line 892
    const v3, 0x7f0d0392

    .line 893
    .line 894
    .line 895
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 900
    .line 901
    .line 902
    return-object v0

    .line 903
    :pswitch_14
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 904
    .line 905
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->providesQSSecurityFooterViewProvider:Ljavax/inject/Provider;

    .line 906
    .line 907
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    move-object v3, v1

    .line 912
    check-cast v3, Landroid/view/View;

    .line 913
    .line 914
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 915
    .line 916
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 917
    .line 918
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    move-object v4, v1

    .line 923
    check-cast v4, Lcom/android/systemui/settings/UserTracker;

    .line 924
    .line 925
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 926
    .line 927
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 928
    .line 929
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    move-object v5, v1

    .line 934
    check-cast v5, Landroid/os/Handler;

    .line 935
    .line 936
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 937
    .line 938
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->activityStarterImplProvider:Ljavax/inject/Provider;

    .line 939
    .line 940
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    move-object v6, v1

    .line 945
    check-cast v6, Lcom/android/systemui/plugins/ActivityStarter;

    .line 946
    .line 947
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 948
    .line 949
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 950
    .line 951
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    move-object v7, v1

    .line 956
    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 957
    .line 958
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 959
    .line 960
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 961
    .line 962
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    move-object v8, v1

    .line 967
    check-cast v8, Landroid/os/Looper;

    .line 968
    .line 969
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 970
    .line 971
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 972
    .line 973
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    move-object v9, v0

    .line 978
    check-cast v9, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 979
    .line 980
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter;

    .line 981
    .line 982
    move-object v2, v0

    .line 983
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Landroid/view/View;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 984
    .line 985
    .line 986
    return-object v0

    .line 987
    :pswitch_15
    new-instance v1, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 988
    .line 989
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 990
    .line 991
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 992
    .line 993
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 994
    .line 995
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSSecurityFooterProvider:Ljavax/inject/Provider;

    .line 996
    .line 997
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    check-cast v0, Lcom/android/systemui/qs/QSSecurityFooter;

    .line 1002
    .line 1003
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qs/bar/SecurityFooterBar;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 1004
    .line 1005
    .line 1006
    return-object v1

    .line 1007
    :pswitch_16
    new-instance v1, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 1008
    .line 1009
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1010
    .line 1011
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1012
    .line 1013
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/bar/BottomLargeTileBar;-><init>(Landroid/content/Context;)V

    .line 1014
    .line 1015
    .line 1016
    return-object v1

    .line 1017
    :pswitch_17
    new-instance v1, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 1018
    .line 1019
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1020
    .line 1021
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1022
    .line 1023
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;-><init>(Landroid/content/Context;)V

    .line 1024
    .line 1025
    .line 1026
    return-object v1

    .line 1027
    :pswitch_18
    new-instance v1, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 1028
    .line 1029
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1030
    .line 1031
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1032
    .line 1033
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/bar/TopLargeTileBar;-><init>(Landroid/content/Context;)V

    .line 1034
    .line 1035
    .line 1036
    return-object v1

    .line 1037
    :pswitch_19
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1038
    .line 1039
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1040
    .line 1041
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1042
    .line 1043
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1044
    .line 1045
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 1046
    .line 1047
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1052
    .line 1053
    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bluetoothDeviceManagerProvider:Ljavax/inject/Provider;

    .line 1054
    .line 1055
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v4

    .line 1059
    check-cast v4, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 1060
    .line 1061
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1062
    .line 1063
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->soundCraftQpDetailAdapterProvider:Ljavax/inject/Provider;

    .line 1064
    .line 1065
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Ldagger/Lazy;)V

    .line 1070
    .line 1071
    .line 1072
    return-object v1

    .line 1073
    :pswitch_1a
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1074
    .line 1075
    move-object v5, v1

    .line 1076
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1077
    .line 1078
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->soundCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v6

    .line 1082
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1083
    .line 1084
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->soundCraftActionBarViewModelProvider:Ljavax/inject/Provider;

    .line 1085
    .line 1086
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    move-object v7, v2

    .line 1091
    check-cast v7, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1092
    .line 1093
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1094
    .line 1095
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->noiseControlBoxViewModelProvider:Ljavax/inject/Provider;

    .line 1096
    .line 1097
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    move-object v8, v2

    .line 1102
    check-cast v8, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1103
    .line 1104
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1105
    .line 1106
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->audioEffectBoxViewModelProvider:Ljavax/inject/Provider;

    .line 1107
    .line 1108
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    move-object v9, v2

    .line 1113
    check-cast v9, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1114
    .line 1115
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1116
    .line 1117
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->wearableLinkBoxViewModelProvider:Ljavax/inject/Provider;

    .line 1118
    .line 1119
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    move-object v10, v2

    .line 1124
    check-cast v10, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1125
    .line 1126
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1127
    .line 1128
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->audioEffectHeaderViewModelProvider:Ljavax/inject/Provider;

    .line 1129
    .line 1130
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    move-object v11, v2

    .line 1135
    check-cast v11, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1136
    .line 1137
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1138
    .line 1139
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->spatialAudioViewModelProvider:Ljavax/inject/Provider;

    .line 1140
    .line 1141
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v2

    .line 1145
    move-object v12, v2

    .line 1146
    check-cast v12, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1147
    .line 1148
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1149
    .line 1150
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->equalizerViewModelProvider:Ljavax/inject/Provider;

    .line 1151
    .line 1152
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    move-object v13, v2

    .line 1157
    check-cast v13, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1158
    .line 1159
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1160
    .line 1161
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->voiceBoostViewModelProvider:Ljavax/inject/Provider;

    .line 1162
    .line 1163
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    move-object v14, v2

    .line 1168
    check-cast v14, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1169
    .line 1170
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1171
    .line 1172
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->volumeNormalizationViewModelProvider:Ljavax/inject/Provider;

    .line 1173
    .line 1174
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    move-object v15, v2

    .line 1179
    check-cast v15, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1180
    .line 1181
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1182
    .line 1183
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->activeNoiseCancelingViewModelProvider:Ljavax/inject/Provider;

    .line 1184
    .line 1185
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    move-object/from16 v16, v2

    .line 1190
    .line 1191
    check-cast v16, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1192
    .line 1193
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1194
    .line 1195
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->adaptiveViewModelProvider:Ljavax/inject/Provider;

    .line 1196
    .line 1197
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    move-object/from16 v17, v2

    .line 1202
    .line 1203
    check-cast v17, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1204
    .line 1205
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1206
    .line 1207
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->ambientSoundViewModelProvider:Ljavax/inject/Provider;

    .line 1208
    .line 1209
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v2

    .line 1213
    move-object/from16 v18, v2

    .line 1214
    .line 1215
    check-cast v18, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1216
    .line 1217
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1218
    .line 1219
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->noiseCancelingLevelViewModelProvider:Ljavax/inject/Provider;

    .line 1220
    .line 1221
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    move-object/from16 v19, v2

    .line 1226
    .line 1227
    check-cast v19, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1228
    .line 1229
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1230
    .line 1231
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->noiseControlEffectBoxViewModelProvider:Ljavax/inject/Provider;

    .line 1232
    .line 1233
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2

    .line 1237
    move-object/from16 v20, v2

    .line 1238
    .line 1239
    check-cast v20, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1240
    .line 1241
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1242
    .line 1243
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->noiseControlOffViewModelProvider:Ljavax/inject/Provider;

    .line 1244
    .line 1245
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    move-object/from16 v21, v2

    .line 1250
    .line 1251
    check-cast v21, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1252
    .line 1253
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1254
    .line 1255
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->noiseCancelingSwitchBarViewModelProvider:Ljavax/inject/Provider;

    .line 1256
    .line 1257
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    move-object/from16 v22, v2

    .line 1262
    .line 1263
    check-cast v22, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1264
    .line 1265
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1266
    .line 1267
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->routineTestViewModelProvider:Ljavax/inject/Provider;

    .line 1268
    .line 1269
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    move-object/from16 v23, v0

    .line 1274
    .line 1275
    check-cast v23, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1276
    .line 1277
    invoke-direct/range {v5 .. v23}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;-><init>(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;)V

    .line 1278
    .line 1279
    .line 1280
    return-object v1

    .line 1281
    :pswitch_1b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1282
    .line 1283
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1284
    .line 1285
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1286
    .line 1287
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;

    .line 1288
    .line 1289
    invoke-direct {v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->injectSoundCraftQpDetailAdapter(Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;)Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    return-object v0

    .line 1297
    :pswitch_1c
    new-instance v7, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 1298
    .line 1299
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1300
    .line 1301
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1302
    .line 1303
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1304
    .line 1305
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secMediaHostProvider:Ljavax/inject/Provider;

    .line 1306
    .line 1307
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v1

    .line 1311
    move-object v3, v1

    .line 1312
    check-cast v3, Lcom/android/systemui/media/SecMediaHost;

    .line 1313
    .line 1314
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1315
    .line 1316
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 1317
    .line 1318
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v1

    .line 1322
    move-object v4, v1

    .line 1323
    check-cast v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 1324
    .line 1325
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1326
    .line 1327
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 1328
    .line 1329
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v5

    .line 1333
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1334
    .line 1335
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->soundCraftQpDetailAdapterProvider:Ljavax/inject/Provider;

    .line 1336
    .line 1337
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v6

    .line 1341
    move-object v1, v7

    .line 1342
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Ldagger/Lazy;Ldagger/Lazy;)V

    .line 1343
    .line 1344
    .line 1345
    return-object v7

    .line 1346
    :pswitch_1d
    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 1347
    .line 1348
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1349
    .line 1350
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1351
    .line 1352
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1353
    .line 1354
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1355
    .line 1356
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 1361
    .line 1362
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 1363
    .line 1364
    .line 1365
    return-object v1

    .line 1366
    :pswitch_1e
    new-instance v1, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 1367
    .line 1368
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1369
    .line 1370
    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1371
    .line 1372
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1373
    .line 1374
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 1375
    .line 1376
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v2

    .line 1380
    move-object v5, v2

    .line 1381
    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    .line 1382
    .line 1383
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1384
    .line 1385
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 1386
    .line 1387
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    move-object v6, v2

    .line 1392
    check-cast v6, Lcom/android/systemui/tuner/TunerService;

    .line 1393
    .line 1394
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1395
    .line 1396
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->customDeviceControlsControllerImplProvider:Ljavax/inject/Provider;

    .line 1397
    .line 1398
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v2

    .line 1402
    move-object v7, v2

    .line 1403
    check-cast v7, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 1404
    .line 1405
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1406
    .line 1407
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->mediaOutputHelperProvider:Ljavax/inject/Provider;

    .line 1408
    .line 1409
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v2

    .line 1413
    move-object v8, v2

    .line 1414
    check-cast v8, Lcom/android/systemui/media/MediaOutputHelper;

    .line 1415
    .line 1416
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1417
    .line 1418
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSBackupRestoreManagerProvider:Ljavax/inject/Provider;

    .line 1419
    .line 1420
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    move-object v9, v0

    .line 1425
    check-cast v9, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 1426
    .line 1427
    move-object v3, v1

    .line 1428
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/qs/bar/MediaDevicesBar;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/controls/controller/CustomDeviceControlsController;Lcom/android/systemui/media/MediaOutputHelper;Lcom/android/systemui/qs/QSBackupRestoreManager;)V

    .line 1429
    .line 1430
    .line 1431
    return-object v1

    .line 1432
    :pswitch_1f
    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 1433
    .line 1434
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1435
    .line 1436
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1437
    .line 1438
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1439
    .line 1440
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barFactoryProvider:Ljavax/inject/Provider;

    .line 1441
    .line 1442
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    check-cast v0, Lcom/android/systemui/qs/bar/BarFactory;

    .line 1447
    .line 1448
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarFactory;)V

    .line 1449
    .line 1450
    .line 1451
    return-object v1

    .line 1452
    :pswitch_20
    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 1453
    .line 1454
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1455
    .line 1456
    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1457
    .line 1458
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1459
    .line 1460
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->brightnessControllerFactory()Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v5

    .line 1464
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1465
    .line 1466
    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->brightnessSliderControllerFactory()Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v6

    .line 1470
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1471
    .line 1472
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->centralSurfacesImplProvider:Ljavax/inject/Provider;

    .line 1473
    .line 1474
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v7

    .line 1478
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1479
    .line 1480
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 1481
    .line 1482
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    move-object v8, v2

    .line 1487
    check-cast v8, Lcom/android/systemui/tuner/TunerService;

    .line 1488
    .line 1489
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1490
    .line 1491
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 1492
    .line 1493
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v2

    .line 1497
    move-object v9, v2

    .line 1498
    check-cast v9, Lcom/android/systemui/util/SettingsHelper;

    .line 1499
    .line 1500
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1501
    .line 1502
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSBackupRestoreManagerProvider:Ljavax/inject/Provider;

    .line 1503
    .line 1504
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v2

    .line 1508
    move-object v10, v2

    .line 1509
    check-cast v10, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 1510
    .line 1511
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1512
    .line 1513
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 1514
    .line 1515
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v11

    .line 1519
    move-object v3, v1

    .line 1520
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/qs/bar/BrightnessBar;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/QSBackupRestoreManager;Ldagger/Lazy;)V

    .line 1521
    .line 1522
    .line 1523
    return-object v1

    .line 1524
    :pswitch_21
    new-instance v1, Lcom/android/systemui/qs/bar/BarFactory;

    .line 1525
    .line 1526
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1527
    .line 1528
    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->brightnessBarProvider:Ljavax/inject/Provider;

    .line 1529
    .line 1530
    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->brightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 1531
    .line 1532
    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->mediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 1533
    .line 1534
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->multiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    .line 1535
    .line 1536
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSMediaPlayerBarProvider:Ljavax/inject/Provider;

    .line 1537
    .line 1538
    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->topLargeTileBarProvider:Ljavax/inject/Provider;

    .line 1539
    .line 1540
    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->pagedTileLayoutBarProvider:Ljavax/inject/Provider;

    .line 1541
    .line 1542
    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->bottomLargeTileBarProvider:Ljavax/inject/Provider;

    .line 1543
    .line 1544
    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->securityFooterBarProvider:Ljavax/inject/Provider;

    .line 1545
    .line 1546
    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->videoCallMicModeBarProvider:Ljavax/inject/Provider;

    .line 1547
    .line 1548
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->budsBarProvider:Ljavax/inject/Provider;

    .line 1549
    .line 1550
    move-object v12, v1

    .line 1551
    move-object/from16 v16, v2

    .line 1552
    .line 1553
    move-object/from16 v17, v3

    .line 1554
    .line 1555
    move-object/from16 v18, v4

    .line 1556
    .line 1557
    move-object/from16 v19, v5

    .line 1558
    .line 1559
    move-object/from16 v20, v6

    .line 1560
    .line 1561
    move-object/from16 v21, v7

    .line 1562
    .line 1563
    move-object/from16 v22, v8

    .line 1564
    .line 1565
    move-object/from16 v23, v0

    .line 1566
    .line 1567
    invoke-direct/range {v12 .. v23}, Lcom/android/systemui/qs/bar/BarFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1568
    .line 1569
    .line 1570
    return-object v1

    .line 1571
    :pswitch_22
    new-instance v1, Lcom/android/systemui/qs/bar/BarController;

    .line 1572
    .line 1573
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1574
    .line 1575
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1576
    .line 1577
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1578
    .line 1579
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 1580
    .line 1581
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v3

    .line 1585
    move-object/from16 v18, v3

    .line 1586
    .line 1587
    check-cast v18, Lcom/android/systemui/util/SettingsHelper;

    .line 1588
    .line 1589
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1590
    .line 1591
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1592
    .line 1593
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v3

    .line 1597
    move-object/from16 v19, v3

    .line 1598
    .line 1599
    check-cast v19, Lcom/android/systemui/dump/DumpManager;

    .line 1600
    .line 1601
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1602
    .line 1603
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barFactoryProvider:Ljavax/inject/Provider;

    .line 1604
    .line 1605
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v3

    .line 1609
    move-object/from16 v20, v3

    .line 1610
    .line 1611
    check-cast v20, Lcom/android/systemui/qs/bar/BarFactory;

    .line 1612
    .line 1613
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1614
    .line 1615
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 1616
    .line 1617
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v3

    .line 1621
    move-object/from16 v21, v3

    .line 1622
    .line 1623
    check-cast v21, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 1624
    .line 1625
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1626
    .line 1627
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->providesKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1628
    .line 1629
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    move-object/from16 v22, v0

    .line 1634
    .line 1635
    check-cast v22, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1636
    .line 1637
    move-object/from16 v16, v1

    .line 1638
    .line 1639
    move-object/from16 v17, v2

    .line 1640
    .line 1641
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/qs/bar/BarController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/bar/BarFactory;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/knox/KnoxStateMonitor;)V

    .line 1642
    .line 1643
    .line 1644
    return-object v1

    .line 1645
    :pswitch_23
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1646
    .line 1647
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v1

    .line 1651
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1652
    .line 1653
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1654
    .line 1655
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v2

    .line 1659
    check-cast v2, Lcom/android/systemui/qs/QSTileHost;

    .line 1660
    .line 1661
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1662
    .line 1663
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 1664
    .line 1665
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v3

    .line 1669
    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    .line 1670
    .line 1671
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1672
    .line 1673
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 1674
    .line 1675
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 1680
    .line 1681
    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesPanelQSPanelHostFactory;->providesPanelQSPanelHost(Landroid/view/View;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/QSPanelHost;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    return-object v0

    .line 1686
    :pswitch_24
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1687
    .line 1688
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanel()Lcom/android/systemui/qs/SecQSPanel;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v2

    .line 1692
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1693
    .line 1694
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    .line 1695
    .line 1696
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    move-object v3, v1

    .line 1701
    check-cast v3, Lcom/android/systemui/qs/QSHost;

    .line 1702
    .line 1703
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1704
    .line 1705
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 1706
    .line 1707
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v1

    .line 1711
    move-object v4, v1

    .line 1712
    check-cast v4, Lcom/android/internal/logging/MetricsLogger;

    .line 1713
    .line 1714
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1715
    .line 1716
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1717
    .line 1718
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v1

    .line 1722
    move-object v5, v1

    .line 1723
    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    .line 1724
    .line 1725
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1726
    .line 1727
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->qSLogger()Lcom/android/systemui/qs/logging/QSLogger;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v6

    .line 1731
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1732
    .line 1733
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1734
    .line 1735
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v1

    .line 1739
    move-object v7, v1

    .line 1740
    check-cast v7, Lcom/android/systemui/dump/DumpManager;

    .line 1741
    .line 1742
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1743
    .line 1744
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->providesPanelQSPanelHostProvider:Ljavax/inject/Provider;

    .line 1745
    .line 1746
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v1

    .line 1750
    move-object v8, v1

    .line 1751
    check-cast v8, Lcom/android/systemui/qs/QSPanelHost;

    .line 1752
    .line 1753
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1754
    .line 1755
    iget-object v9, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->barControllerProvider:Ljavax/inject/Provider;

    .line 1756
    .line 1757
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1758
    .line 1759
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secQSPanelResourcePickerProvider:Ljavax/inject/Provider;

    .line 1760
    .line 1761
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v1

    .line 1765
    move-object v10, v1

    .line 1766
    check-cast v10, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 1767
    .line 1768
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1769
    .line 1770
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1771
    .line 1772
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v1

    .line 1776
    move-object v11, v1

    .line 1777
    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    .line 1778
    .line 1779
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1780
    .line 1781
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideStatusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 1782
    .line 1783
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v1

    .line 1787
    move-object v12, v1

    .line 1788
    check-cast v12, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1789
    .line 1790
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1791
    .line 1792
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->activityStarterImplProvider:Ljavax/inject/Provider;

    .line 1793
    .line 1794
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v1

    .line 1798
    move-object v13, v1

    .line 1799
    check-cast v13, Lcom/android/systemui/plugins/ActivityStarter;

    .line 1800
    .line 1801
    new-instance v14, Landroid/os/Handler;

    .line 1802
    .line 1803
    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1807
    .line 1808
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 1809
    .line 1810
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v1

    .line 1814
    move-object v15, v1

    .line 1815
    check-cast v15, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 1816
    .line 1817
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1818
    .line 1819
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    .line 1820
    .line 1821
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v1

    .line 1825
    move-object/from16 v16, v1

    .line 1826
    .line 1827
    check-cast v16, Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 1828
    .line 1829
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1830
    .line 1831
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSButtonGridControllerProvider:Ljavax/inject/Provider;

    .line 1832
    .line 1833
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v0

    .line 1837
    move-object/from16 v17, v0

    .line 1838
    .line 1839
    check-cast v17, Lcom/android/systemui/qs/QSButtonGridController;

    .line 1840
    .line 1841
    invoke-static/range {v2 .. v17}, Lcom/android/systemui/qs/SecQSPanelController_Factory;->newInstance(Lcom/android/systemui/qs/SecQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/QSPanelHost;Ljavax/inject/Provider;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/qs/QSButtonGridController;)Lcom/android/systemui/qs/SecQSPanelController;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    return-object v0

    .line 1846
    :pswitch_25
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1847
    .line 1848
    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->qSContainerImpl()Lcom/android/systemui/qs/QSContainerImpl;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v3

    .line 1852
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1853
    .line 1854
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 1855
    .line 1856
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v1

    .line 1860
    move-object v4, v1

    .line 1861
    check-cast v4, Lcom/android/systemui/qs/SecQSPanelController;

    .line 1862
    .line 1863
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->qSFragmentComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;

    .line 1864
    .line 1865
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl;->secQuickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

    .line 1866
    .line 1867
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v1

    .line 1871
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1872
    .line 1873
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 1874
    .line 1875
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v2

    .line 1879
    move-object v6, v2

    .line 1880
    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 1881
    .line 1882
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1883
    .line 1884
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1885
    .line 1886
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v2

    .line 1890
    move-object v7, v2

    .line 1891
    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    .line 1892
    .line 1893
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1894
    .line 1895
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 1896
    .line 1897
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v2

    .line 1901
    move-object v8, v2

    .line 1902
    check-cast v8, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 1903
    .line 1904
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 1905
    .line 1906
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1907
    .line 1908
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    move-object v9, v0

    .line 1913
    check-cast v9, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1914
    .line 1915
    new-instance v0, Lcom/android/systemui/qs/QSContainerImplController;

    .line 1916
    .line 1917
    move-object v5, v1

    .line 1918
    check-cast v5, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    .line 1919
    .line 1920
    move-object v2, v0

    .line 1921
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/qs/QSContainerImplController;-><init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1922
    .line 1923
    .line 1924
    return-object v0

    .line 1925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
