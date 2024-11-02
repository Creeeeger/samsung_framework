.class public Lcom/sec/ims/configuration/DATA$URI;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/configuration/DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URI"
.end annotation


# static fields
.field public static final CONFIG_PROVIDER:Ljava/lang/String; = "content://com.samsung.rcs.autoconfigurationprovider/"

.field public static final DMCONFIG_PROVIDER:Ljava/lang/String; = "content://com.samsung.rcs.dmconfigurationprovider/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
