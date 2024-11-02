.class final enum Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$15;
.super Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CMD_Y"

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$15;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Landroid/view/KeyboardShortcutInfo;
    .locals 2

    .line 1
    new-instance p0, Landroid/view/KeyboardShortcutInfo;

    .line 2
    .line 3
    const v0, 0x7f130a1a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "com.samsung.android.smartmirroring"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/model/KshDataUtils;->getIconForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/16 v0, 0x35

    .line 17
    .line 18
    const/high16 v1, 0x10000

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
