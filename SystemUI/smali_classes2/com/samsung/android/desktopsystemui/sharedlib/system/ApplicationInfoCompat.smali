.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/ApplicationInfoCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mWrapper:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ApplicationInfoCompat;->mWrapper:Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isInstantApp()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ApplicationInfoCompat;->mWrapper:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
