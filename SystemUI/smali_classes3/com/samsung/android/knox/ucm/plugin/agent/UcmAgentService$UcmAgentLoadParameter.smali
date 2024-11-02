.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UcmAgentLoadParameter"
.end annotation


# instance fields
.field param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;-><init>(IILandroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;->param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;->param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    .line 2
    .line 3
    return-object p0
.end method
