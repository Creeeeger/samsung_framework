.class public final Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BADGE_URI:Landroid/net/Uri;

.field public static final COLUMNS:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "content://com.sec.badge/apps"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->BADGE_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v0, "class"

    .line 10
    .line 11
    const-string v1, "badgecount"

    .line 12
    .line 13
    const-string/jumbo v2, "package"

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->COLUMNS:[Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method
