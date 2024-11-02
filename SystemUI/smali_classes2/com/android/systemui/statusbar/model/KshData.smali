.class public final Lcom/android/systemui/statusbar/model/KshData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public final mContext:Landroid/content/Context;

.field public mDefaultIcons:Ljava/util/HashMap;

.field public mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public final mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

.field public mKshGroups:Ljava/util/List;

.field public final mModifierDrawables:Landroid/util/SparseArray;

.field public mModifierNames:Landroid/util/SparseArray;

.field public mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

.field public mSpecialCharacterDrawables:Landroid/util/SparseArray;

.field public mSpecialCharacterNames:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierDrawables:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/KshDataUtils;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 54
    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/model/SpecialCharacterNames$1;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/SpecialCharacterNames$1;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 61
    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/model/ModifierNames$1;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/ModifierNames$1;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    .line 68
    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawables$1;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawables$1;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 75
    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawableDescriptions$1;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawableDescriptions$1;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    const-class v2, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, [Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/model/KshData;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    invoke-direct {v3}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda2;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const v1, 0x7f130a1c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method
