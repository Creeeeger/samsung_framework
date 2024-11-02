.class public final Landroidx/picker/features/scs/AppDataListSCSFactory;
.super Landroidx/picker/features/scs/AppDataListBixbyFactory;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/features/scs/AppDataListBixbyFactory;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.samsung.android.scs.ai.search/v1"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AppDataListSCSFactory"

    .line 2
    .line 3
    return-object p0
.end method
