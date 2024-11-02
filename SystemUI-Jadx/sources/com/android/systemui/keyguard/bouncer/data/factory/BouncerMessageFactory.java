package com.android.systemui.keyguard.bouncer.data.factory;

import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.R;
import com.android.systemui.keyguard.bouncer.shared.model.BouncerMessageModel;
import com.android.systemui.keyguard.bouncer.shared.model.Message;
import kotlin.Pair;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerMessageFactory {
    public final KeyguardSecurityModel securityModel;
    public final KeyguardUpdateMonitor updateMonitor;

    public BouncerMessageFactory(KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel keyguardSecurityModel) {
        this.updateMonitor = keyguardUpdateMonitor;
        this.securityModel = keyguardSecurityModel;
    }

    public final BouncerMessageModel createFromPromptReason(int i, int i2) {
        boolean z;
        Pair pair;
        KeyguardSecurityModel.SecurityMode securityMode = this.securityModel.getSecurityMode(i2);
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.updateMonitor;
        if (!keyguardUpdateMonitor.isUdfpsSupported() && keyguardUpdateMonitor.isUnlockingWithFingerprintAllowed()) {
            z = true;
        } else {
            z = false;
        }
        Integer valueOf = Integer.valueOf(R.string.keyguard_enter_pin);
        Integer valueOf2 = Integer.valueOf(R.string.keyguard_enter_password);
        Integer valueOf3 = Integer.valueOf(R.string.keyguard_enter_pattern);
        switch (i) {
            case 1:
                int i3 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 2:
                int i4 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 3:
                int i5 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 4:
                int i6 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 5:
                int i7 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 6:
                int i8 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i8 != 1) {
                    if (i8 != 2) {
                        if (i8 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 7:
                if (z) {
                    int i9 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                } else {
                    int i10 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                }
            case 8:
                if (z) {
                    int i11 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i11 != 1) {
                        if (i11 != 2) {
                            if (i11 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                } else {
                    int i12 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                }
            case 9:
                if (z) {
                    int i13 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i13 != 1) {
                        if (i13 != 2) {
                            if (i13 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                } else {
                    int i14 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i14 != 1) {
                        if (i14 != 2) {
                            if (i14 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                }
            case 10:
                if (z) {
                    int i15 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i15 != 1) {
                        if (i15 != 2) {
                            if (i15 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                } else {
                    int i16 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i16 != 1) {
                        if (i16 != 2) {
                            if (i16 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                }
            case 11:
                int i17 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i17 != 1) {
                    if (i17 != 2) {
                        if (i17 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 12:
                int i18 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i18 != 1) {
                    if (i18 != 2) {
                        if (i18 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 13:
                int i19 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i19 != 1) {
                    if (i19 != 2) {
                        if (i19 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            case 14:
                if (z) {
                    int i20 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i20 != 1) {
                        if (i20 != 2) {
                            if (i20 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                } else {
                    int i21 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                    if (i21 != 1) {
                        if (i21 != 2) {
                            if (i21 != 3) {
                                pair = new Pair(0, 0);
                                break;
                            } else {
                                pair = new Pair(valueOf, 0);
                                break;
                            }
                        } else {
                            pair = new Pair(valueOf2, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf3, 0);
                        break;
                    }
                }
            case 15:
                int i22 = BouncerMessageFactoryKt$WhenMappings.$EnumSwitchMapping$0[securityMode.ordinal()];
                if (i22 != 1) {
                    if (i22 != 2) {
                        if (i22 != 3) {
                            pair = new Pair(0, 0);
                            break;
                        } else {
                            pair = new Pair(valueOf, 0);
                            break;
                        }
                    } else {
                        pair = new Pair(valueOf2, 0);
                        break;
                    }
                } else {
                    pair = new Pair(valueOf3, 0);
                    break;
                }
            default:
                pair = null;
                break;
        }
        if (pair == null) {
            return null;
        }
        return new BouncerMessageModel(new Message(null, (Integer) pair.getFirst(), null, null, false, 29, null), new Message(null, (Integer) pair.getSecond(), null, null, false, 29, null));
    }
}
