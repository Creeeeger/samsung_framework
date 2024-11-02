.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final actionBar:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;

.field public final audioEffectBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

.field public final noiseControlBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

.field public final root:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

.field public final routineTest:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

.field public final wearableLinkBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0aa1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->actionBar:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;-><init>(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->audioEffectBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->wearableLinkBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;

    .line 42
    .line 43
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/feature/SoundCraftDebugFeatures;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/feature/SoundCraftDebugFeatures;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "audio_soundcraft_debug_routine_view"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x1

    .line 64
    if-ne v0, v1, :cond_0

    .line 65
    .line 66
    move v2, v1

    .line 67
    :cond_0
    if-eqz v2, :cond_1

    .line 68
    .line 69
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 70
    .line 71
    const v1, 0x7f0a0aa2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/view/ViewStub;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;-><init>(Landroid/view/ViewStub;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->routineTest:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 86
    .line 87
    return-void
.end method
