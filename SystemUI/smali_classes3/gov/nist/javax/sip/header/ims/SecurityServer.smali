.class public Lgov/nist/javax/sip/header/ims/SecurityServer;
.super Lgov/nist/javax/sip/header/ims/SecurityAgree;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Security-Server"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
