.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static fontSizeHasBeenChangedFromTile:Z


# instance fields
.field public final CHANGE_BY_BUTTON_DELAY_MS:J

.field public final CHANGE_BY_SEEKBAR_DELAY_MS:J

.field public final MIN_UPDATE_INTERVAL_MS:J

.field public final backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public cancelUpdateFontScaleRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final configuration:Landroid/content/res/Configuration;

.field public doneButton:Landroid/widget/Button;

.field public final fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$fontSizeObserver$1;

.field public final lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public lastUpdateTime:J

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

.field public final strEntryValues:[Ljava/lang/String;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public title:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/time/SystemClock;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 11
    .line 12
    const-wide/16 p2, 0x320

    .line 13
    .line 14
    iput-wide p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->MIN_UPDATE_INTERVAL_MS:J

    .line 15
    .line 16
    const-wide/16 p2, 0x64

    .line 17
    .line 18
    iput-wide p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->CHANGE_BY_SEEKBAR_DELAY_MS:J

    .line 19
    .line 20
    const-wide/16 p2, 0x12c

    .line 21
    .line 22
    iput-wide p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->CHANGE_BY_BUTTON_DELAY_MS:J

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const p3, 0x7f030052

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 36
    .line 37
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    const/4 p3, -0x1

    .line 40
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    new-instance p2, Landroid/content/res/Configuration;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->configuration:Landroid/content/res/Configuration;

    .line 59
    .line 60
    new-instance p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$fontSizeObserver$1;

    .line 61
    .line 62
    invoke-direct {p1, p5, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$fontSizeObserver$1;-><init>(Landroid/os/Handler;Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$fontSizeObserver$1;

    .line 66
    .line 67
    return-void
.end method

.method public static final access$changeFontSize(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    .line 13
    .line 14
    sget-boolean p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->fontSizeHasBeenChangedFromTile:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    .line 20
    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    sput-boolean p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->fontSizeHasBeenChangedFromTile:Z

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 34
    .line 35
    check-cast p1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastUpdateTime:J

    .line 45
    .line 46
    sub-long/2addr v0, v2

    .line 47
    iget-wide v2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->MIN_UPDATE_INTERVAL_MS:J

    .line 48
    .line 49
    cmp-long p1, v0, v2

    .line 50
    .line 51
    if-gez p1, :cond_1

    .line 52
    .line 53
    add-long/2addr p2, v2

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->cancelUpdateFontScaleRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->backgroundDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 62
    .line 63
    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$updateFontScaleDelayed$1;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$updateFontScaleDelayed$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2, p3, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->cancelUpdateFontScaleRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 73
    .line 74
    :cond_3
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->configuration:Landroid/content/res/Configuration;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->configuration:Landroid/content/res/Configuration;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 13
    .line 14
    .line 15
    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    .line 17
    and-int/2addr p1, v0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->title:Landroid/widget/TextView;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onConfigurationChanged$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onConfigurationChanged$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const v0, 0x7f13068a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0d00f3

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    const v1, 0x7f130db0

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 32
    .line 33
    .line 34
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const p1, 0x10201e1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->title:Landroid/widget/TextView;

    .line 47
    .line 48
    const p1, 0x1020019

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/Button;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->doneButton:Landroid/widget/Button;

    .line 58
    .line 59
    const p1, 0x7f0a040d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 71
    .line 72
    array-length v0, p1

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    .line 74
    .line 75
    array-length p1, p1

    .line 76
    const/4 v1, 0x0

    .line 77
    move v4, v1

    .line 78
    :goto_0
    if-ge v4, p1, :cond_0

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget-object v6, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 89
    .line 90
    aget-object v6, v6, v4

    .line 91
    .line 92
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    const/16 v7, 0x64

    .line 97
    .line 98
    int-to-float v7, v7

    .line 99
    mul-float/2addr v6, v7

    .line 100
    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const v7, 0x7f130689

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    aput-object v5, v0, v4

    .line 120
    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 125
    .line 126
    if-nez p1, :cond_1

    .line 127
    .line 128
    move-object p1, v2

    .line 129
    :cond_1
    iput-object v0, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 130
    .line 131
    iget-object v0, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    iget-object v5, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 138
    .line 139
    array-length v6, v5

    .line 140
    if-ge v4, v6, :cond_2

    .line 141
    .line 142
    iget-object p1, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    aget-object p1, v5, p1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const-string p1, ""

    .line 152
    .line 153
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 157
    .line 158
    if-nez p1, :cond_3

    .line 159
    .line 160
    move-object p1, v2

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 162
    .line 163
    array-length v0, v0

    .line 164
    sub-int/2addr v0, v3

    .line 165
    iget-object p1, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 171
    .line 172
    invoke-interface {p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    const-string v4, "font_scale"

    .line 177
    .line 178
    const/high16 v5, 0x3f800000    # 1.0f

    .line 179
    .line 180
    invoke-interface {p1, v4, v0, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloatForUser(Ljava/lang/String;IF)F

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    .line 186
    iget-object v5, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 187
    .line 188
    aget-object v5, v5, v1

    .line 189
    .line 190
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    iget-object v6, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 195
    .line 196
    array-length v6, v6

    .line 197
    move v7, v3

    .line 198
    :goto_2
    if-ge v7, v6, :cond_5

    .line 199
    .line 200
    iget-object v8, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 201
    .line 202
    aget-object v8, v8, v7

    .line 203
    .line 204
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    const/high16 v9, 0x3f000000    # 0.5f

    .line 209
    .line 210
    invoke-static {v8, v5, v9, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    cmpg-float v5, p1, v5

    .line 215
    .line 216
    if-gez v5, :cond_4

    .line 217
    .line 218
    sub-int/2addr v7, v3

    .line 219
    goto :goto_3

    .line 220
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 221
    .line 222
    move v5, v8

    .line 223
    goto :goto_2

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 225
    .line 226
    array-length p1, p1

    .line 227
    add-int/lit8 v7, p1, -0x1

    .line 228
    .line 229
    :goto_3
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 233
    .line 234
    if-nez p1, :cond_6

    .line 235
    .line 236
    move-object p1, v2

    .line 237
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    iget-object v5, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 244
    .line 245
    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 246
    .line 247
    .line 248
    iget-object v5, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 249
    .line 250
    if-lez v0, :cond_7

    .line 251
    .line 252
    move v6, v3

    .line 253
    goto :goto_4

    .line 254
    :cond_7
    move v6, v1

    .line 255
    :goto_4
    invoke-static {v5, v6}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 256
    .line 257
    .line 258
    iget-object v5, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 259
    .line 260
    iget-object p1, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 261
    .line 262
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-ge v0, p1, :cond_8

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_8
    move v3, v1

    .line 270
    :goto_5
    invoke-static {v5, v3}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->seekBarWithIconButtonsView:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 274
    .line 275
    if-nez p1, :cond_9

    .line 276
    .line 277
    move-object p1, v2

    .line 278
    :cond_9
    new-instance v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;

    .line 279
    .line 280
    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;

    .line 284
    .line 285
    iput-object v0, p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 286
    .line 287
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->doneButton:Landroid/widget/Button;

    .line 288
    .line 289
    if-nez p1, :cond_a

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_a
    move-object v2, p1

    .line 293
    :goto_6
    new-instance p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$2;

    .line 294
    .line 295
    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$2;-><init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 302
    .line 303
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$fontSizeObserver$1;

    .line 304
    .line 305
    check-cast p1, Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 306
    .line 307
    invoke-virtual {p1, v4}, Lcom/android/systemui/util/settings/SystemSettingsImpl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->cancelUpdateFontScaleRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->cancelUpdateFontScaleRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->fontSizeObserver:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$fontSizeObserver$1;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
