.class public final Lcom/android/systemui/edgelighting/utils/AppIconCache;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final KEY_SMALL_ICON:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mIconCache:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LruCache;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    .line 11
    .line 12
    const-string/jumbo v0, "smallIcon"

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->KEY_SMALL_ICON:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method
