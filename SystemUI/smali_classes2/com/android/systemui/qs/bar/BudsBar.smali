.class public final Lcom/android/systemui/qs/bar/BudsBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BATTERY_TAG_KEYS:[B


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;

.field public budsBatteries:Landroid/widget/TextView;

.field public budsButton:Landroid/widget/LinearLayout;

.field public budsContainer:Landroid/widget/LinearLayout;

.field public budsContentsUpdated:Z

.field public budsEnabled:Z

.field public budsIcon:Landroid/widget/ImageView;

.field public budsParent:Landroid/view/View;

.field public budsText:Landroid/widget/TextView;

.field public final context:Landroid/content/Context;

.field public fontScale:F

.field public final lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public marginView:Landroid/widget/LinearLayout;

.field public final mediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

.field public orientation:I

.field public final qsPanelControllerLazy:Ldagger/Lazy;

.field public receiverRegistered:Z

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final settingsListener:Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;

.field public soundCraftAdapter:Ldagger/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/BudsBar$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BudsBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/systemui/qs/bar/BudsBar;->BATTERY_TAG_KEYS:[B

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 1
        0x8t
        0x2t
        0x9t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaBluetoothHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/media/MediaBluetoothHelper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BudsBar;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/bar/BudsBar;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/bar/BudsBar;->mediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 13
    .line 14
    new-instance p1, Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;-><init>(Lcom/android/systemui/qs/bar/BudsBar;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsListener:Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;

    .line 20
    .line 21
    new-instance p1, Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;-><init>(Lcom/android/systemui/qs/bar/BudsBar;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->broadcastReceiver:Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    .line 29
    .line 30
    sget-object p2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 31
    .line 32
    sget-object p3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 33
    .line 34
    sget-object p4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 35
    .line 36
    sget-object p5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 37
    .line 38
    filled-new-array {p2, p3, p4, p5}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 50
    .line 51
    return-void
.end method

.method public static final toBatteriesString$toColoredStringBuilder(Ljava/lang/String;Lcom/android/systemui/qs/bar/BudsBar;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/qs/bar/BudsBar;->context:Landroid/content/Context;

    .line 9
    .line 10
    const v2, 0x7f060516

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/16 p1, 0x21

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static final updateWeights$updateWeight(Landroid/widget/LinearLayout;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsListener:Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0332

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0d0332

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v2, 0x7f0d0333

    .line 23
    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const v2, 0x7f0a01e7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const v4, 0x7f080f65

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v2, v1

    .line 61
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsButton:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const v2, 0x7f0a0613

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->marginView:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    const v2, 0x7f0a01e8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContainer:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    const v2, 0x7f0a01e9

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .line 94
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsIcon:Landroid/widget/ImageView;

    .line 95
    .line 96
    const v2, 0x7f0a01eb

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/widget/TextView;

    .line 104
    .line 105
    const/4 v3, 0x3

    .line 106
    const/4 v4, 0x5

    .line 107
    const/4 v5, 0x1

    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move-object v2, v1

    .line 121
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsText:Landroid/widget/TextView;

    .line 122
    .line 123
    const v2, 0x7f0a01e6

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v2, :cond_2

    .line 133
    .line 134
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    move-object v2, v1

    .line 145
    :goto_2
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsBatteries:Landroid/widget/TextView;

    .line 146
    .line 147
    const v2, 0x7f0a0a63

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Landroid/widget/LinearLayout;

    .line 155
    .line 156
    if-eqz v2, :cond_4

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    move-object v0, v1

    .line 163
    :cond_4
    :goto_3
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsParent:Landroid/view/View;

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_5
    move-object p1, v1

    .line 167
    :goto_4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 168
    .line 169
    const-string p1, "buds_enable"

    .line 170
    .line 171
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    filled-new-array {p1}, [Landroid/net/Uri;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 180
    .line 181
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->settingsListener:Lcom/android/systemui/qs/bar/BudsBar$settingsListener$1;

    .line 182
    .line 183
    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBudsEnable()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsButton:Landroid/widget/LinearLayout;

    .line 193
    .line 194
    if-eqz p1, :cond_6

    .line 195
    .line 196
    new-instance v0, Lcom/android/systemui/qs/bar/BudsBar$initialize$2;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BudsBar$initialize$2;-><init>(Lcom/android/systemui/qs/bar/BudsBar;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BudsBar;->updateBarContents([B)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsButton:Landroid/widget/LinearLayout;

    .line 208
    .line 209
    if-eqz p1, :cond_7

    .line 210
    .line 211
    const/high16 v0, 0x3f000000    # 0.5f

    .line 212
    .line 213
    invoke-static {p1, v0}, Lcom/android/systemui/qs/bar/BudsBar;->updateWeights$updateWeight(Landroid/widget/LinearLayout;F)V

    .line 214
    .line 215
    .line 216
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->marginView:Landroid/widget/LinearLayout;

    .line 217
    .line 218
    if-eqz p1, :cond_8

    .line 219
    .line 220
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 221
    .line 222
    invoke-static {p1, v0}, Lcom/android/systemui/qs/bar/BudsBar;->updateWeights$updateWeight(Landroid/widget/LinearLayout;F)V

    .line 223
    .line 224
    .line 225
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BudsBar;->updateBarVisibility()V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BudsBar;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget v4, p0, Lcom/android/systemui/qs/bar/BudsBar;->orientation:I

    .line 37
    .line 38
    if-ne v4, v1, :cond_2

    .line 39
    .line 40
    iget v4, p0, Lcom/android/systemui/qs/bar/BudsBar;->fontScale:F

    .line 41
    .line 42
    cmpg-float v4, v4, v2

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v4, 0x0

    .line 49
    :goto_0
    if-nez v4, :cond_8

    .line 50
    .line 51
    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->orientation:I

    .line 52
    .line 53
    iput v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->fontScale:F

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BudsBar;->updateHeightMargins()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsButton:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/high16 v2, 0x3f000000    # 0.5f

    .line 63
    .line 64
    invoke-static {v1, v2}, Lcom/android/systemui/qs/bar/BudsBar;->updateWeights$updateWeight(Landroid/widget/LinearLayout;F)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->marginView:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 72
    .line 73
    invoke-static {v1, v2}, Lcom/android/systemui/qs/bar/BudsBar;->updateWeights$updateWeight(Landroid/widget/LinearLayout;F)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsText:Landroid/widget/TextView;

    .line 77
    .line 78
    const v2, 0x3fa66666    # 1.3f

    .line 79
    .line 80
    .line 81
    const v4, 0x3f4ccccd    # 0.8f

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    const v5, 0x7f070f13

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v5, v4, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsBatteries:Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    const v5, 0x7f070f12

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v5, v4, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 100
    .line 101
    .line 102
    :cond_6
    const v1, 0x7f060512

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsIcon:Landroid/widget/ImageView;

    .line 114
    .line 115
    if-nez p0, :cond_7

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-virtual {v3, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->receiverRegistered:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    :cond_1
    if-nez p1, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->receiverRegistered:Z

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BudsBar;->updateBroadcastDispatcher(Z)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BudsBar;->updateBarContents([B)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public final toBattery([BB)Ljava/lang/Integer;
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v3, p1

    .line 11
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v3, p1

    .line 15
    move v4, v1

    .line 16
    :goto_0
    if-ge v4, v3, :cond_2

    .line 17
    .line 18
    aget-byte v5, p1, v4

    .line 19
    .line 20
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    aget-byte p1, p1, v1

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 42
    .line 43
    :cond_2
    :goto_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->windowed$default(Ljava/lang/Iterable;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v4, v0

    .line 63
    check-cast v4, Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ne v5, p2, :cond_4

    .line 76
    .line 77
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Ljava/lang/Number;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v6, 0x2

    .line 88
    if-ne v5, v6, :cond_4

    .line 89
    .line 90
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ne v4, v2, :cond_4

    .line 101
    .line 102
    move v4, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move v4, v1

    .line 105
    :goto_2
    if-eqz v4, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-object v0, v3

    .line 109
    :goto_3
    check-cast v0, Ljava/util/List;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    move-object p1, v3

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    add-int/lit8 p1, p1, -0x1

    .line 128
    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :goto_4
    check-cast p1, Ljava/lang/Byte;

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v1, "toBattery: tagKey:"

    .line 144
    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, ": "

    .line 153
    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    goto :goto_5

    .line 172
    :cond_7
    const-string/jumbo p1, "toBattery: cannot find "

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p2, p0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_5
    return-object v3
.end method

.method public final updateBarContents([B)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->mediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    sget-object v3, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothA2dpUtil;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->getOrderConnectedDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    xor-int/2addr v3, v2

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_2
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 37
    .line 38
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_11

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsText:Landroid/widget/TextView;

    .line 50
    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v8, "updateBarContents: name: "

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    const/16 v5, 0x9

    .line 80
    .line 81
    const/16 v6, 0x8

    .line 82
    .line 83
    if-nez p1, :cond_8

    .line 84
    .line 85
    sget-object p1, Lcom/android/systemui/qs/bar/BudsBar;->BATTERY_TAG_KEYS:[B

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/qs/bar/BudsBar;->toBattery([BB)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move v0, v3

    .line 105
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/qs/bar/BudsBar;->toBattery([BB)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    move p1, v3

    .line 117
    :goto_3
    new-instance v1, Lkotlin/Pair;

    .line 118
    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    const-string p1, "getBatteries: cannot get metadata"

    .line 132
    .line 133
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/qs/bar/BudsBar;->toBattery([BB)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/qs/bar/BudsBar;->toBattery([BB)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    new-instance v1, Lkotlin/Pair;

    .line 158
    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_4
    if-eqz v1, :cond_10

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsBatteries:Landroid/widget/TextView;

    .line 173
    .line 174
    if-nez p1, :cond_a

    .line 175
    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->context:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ne v0, v2, :cond_b

    .line 185
    .line 186
    move v3, v2

    .line 187
    :cond_b
    const-string v0, "R"

    .line 188
    .line 189
    const-string v5, "L"

    .line 190
    .line 191
    if-eqz v3, :cond_c

    .line 192
    .line 193
    move-object v6, v0

    .line 194
    goto :goto_5

    .line 195
    :cond_c
    move-object v6, v5

    .line 196
    :goto_5
    if-eqz v3, :cond_d

    .line 197
    .line 198
    move-object v0, v5

    .line 199
    :cond_d
    if-eqz v3, :cond_e

    .line 200
    .line 201
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    goto :goto_6

    .line 206
    :cond_e
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    :goto_6
    check-cast v5, Ljava/lang/Number;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v3, :cond_f

    .line 217
    .line 218
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    goto :goto_7

    .line 223
    :cond_f
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :goto_7
    check-cast v1, Ljava/lang/Number;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 234
    .line 235
    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v7, " "

    .line 241
    .line 242
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v5, " \u00b7 "

    .line 249
    .line 250
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-static {v5, p0}, Lcom/android/systemui/qs/bar/BudsBar;->toBatteriesString$toColoredStringBuilder(Ljava/lang/String;Lcom/android/systemui/qs/bar/BudsBar;)Landroid/text/SpannableStringBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, "%"

    .line 278
    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1, p0}, Lcom/android/systemui/qs/bar/BudsBar;->toBatteriesString$toColoredStringBuilder(Ljava/lang/String;Lcom/android/systemui/qs/bar/BudsBar;)Landroid/text/SpannableStringBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string/jumbo v3, "updateBarContents: batteries: "

    .line 297
    .line 298
    .line 299
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    :cond_10
    :goto_8
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContentsUpdated:Z

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_11
    const-string/jumbo p1, "updateBarContents: connected device is empty"

    .line 319
    .line 320
    .line 321
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContentsUpdated:Z

    .line 325
    .line 326
    :goto_9
    return-void
.end method

.method public final updateBarVisibility()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContentsUpdated:Z

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v3, "updateBarVisibility: budsEnabled: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", budsContentsUpdated: "

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsParent:Landroid/view/View;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContentsUpdated:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move v2, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v2, 0x8

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsEnabled:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContentsUpdated:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final updateBroadcastDispatcher(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    iget-object v8, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->broadcastReceiver:Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    const-string p1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 12
    .line 13
    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/16 v7, 0x3c

    .line 21
    .line 22
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p1, "updateBroadcastDispatcher: register"

    .line 26
    .line 27
    .line 28
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->receiverRegistered:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->broadcastReceiver:Lcom/android/systemui/qs/bar/BudsBar$broadcastReceiver$1;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p1, "updateBroadcastDispatcher: unregister"

    .line 41
    .line 42
    .line 43
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BudsBar;->receiverRegistered:Z

    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BudsBar;->context:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const v4, 0x7f070091

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsContainer:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v3, 0x7f070164

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const v5, 0x7f070163

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar;->budsBatteries:Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const v1, 0x7f070162

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method
