.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/KeyboardShortcutInfoWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIcon(Landroid/view/KeyboardShortcutInfo;)Landroid/graphics/drawable/Icon;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getKeyboardShortcutInfo(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)Landroid/view/KeyboardShortcutInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
