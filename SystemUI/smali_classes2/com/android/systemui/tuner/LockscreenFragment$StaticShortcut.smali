.class Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;
.super Lcom/android/systemui/tuner/LockscreenFragment$Item;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticShortcut"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/LockscreenFragment$Item;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getExpando()Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method
