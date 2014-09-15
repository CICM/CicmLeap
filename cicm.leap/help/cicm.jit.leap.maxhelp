{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64"
		}
,
		"rect" : [ 76.0, 124.0, 549.0, 513.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64"
						}
,
						"rect" : [ 76.0, 150.0, 549.0, 487.0 ],
						"bgcolor" : [ 0.968351, 0.966494, 0.959529, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 202.421875, 203.0, 185.0, 21.0 ],
									"text" : "supports: all types/planecount"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 22.421875, 203.0, 169.0, 21.0 ],
									"text" : "cicm.jit.leap 4 char 640 120"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 22.421875, 142.0, 26.0, 26.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 22.421875, 173.0, 71.0, 21.0 ],
									"text" : "qmetro 30"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.78125, 71.0, 291.0, 20.0 ],
									"text" : "Reports the image frame of the leapmotion controller",
									"textcolor" : [ 0.30292, 0.30292, 0.30292, 1.0 ],
									"varname" : "autohelp_top_description[2]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.94324, 0.954082, 0.954082, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"id" : "obj-33",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.78125, 71.0, 353.28125, 20.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 271.78125, 15.75, 78.0, 20.0 ],
									"text" : "version 0.2",
									"textcolor" : [ 0.9404, 0.940544, 0.940332, 1.0 ],
									"varname" : "autohelp_top_title[4]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 272.78125, 16.75, 73.0, 20.0 ],
									"text" : "version 0.2",
									"textcolor" : [ 0.424631, 0.424696, 0.4246, 0.21 ],
									"varname" : "autohelp_top_title[5]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.05 ],
									"bordercolor" : [ 0.235294, 0.235294, 0.235294, 0.2 ],
									"id" : "obj-29",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 271.78125, 15.75, 74.0, 21.0 ],
									"rounded" : 6,
									"shadow" : -1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "cicm.jit.leap", "@width", 350, "@obj-desc", "access to the leapmotion image frame" ],
									"embed" : 1,
									"id" : "obj-8",
									"maxclass" : "bpatcher",
									"name" : "cicm.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64"
										}
,
										"rect" : [ 82.0, 156.0, 353.0, 55.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 20.0, 20.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"bgcolor" : [ 0.952941, 0.952941, 0.952941, 0.0 ],
													"border" : 6,
													"bordercolor" : [ 0.764706, 0.776471, 0.803922, 1.0 ],
													"id" : "obj-4",
													"maxclass" : "panel",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 0.0, 2.0, 57.805279, 49.262012 ],
													"rounded" : 15
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 14.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 90.0, 169.0, 68.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 14.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 387.770844, 442.0, 37.0, 22.0 ],
													"text" : "t b s"
												}

											}
, 											{
												"box" : 												{
													"autofit" : 1,
													"data" : [ 15658, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wY6cu0ijbdPFG+op97g4j2YW6cW60arsxZKrUrU3JHHBRQD.wcHwUHtgK3K.WgD7AHWXghDBDHjIHHFYoXgbhb.kDaE4fEBhCIXvxDahOrY8rd2Ymc24PetphK54s12tlt6pmo5Z5Yd2++jFMG5o6tppqpdp2ikWTTTj...voZ9K5E....jcDnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...GPwE8BvrJJJRQQQxyySdddRRJLLT999JHHPAAARRpPgBpPgBwOuACFD+bretS68HLLTQQQRRpToRG3wMeYd+llo89MOXVNNpu+Y84m2BCCm5i66O8qIMs0uYkY6f8m8QQQo94+758Oskq7RVW9y59eY8wy51mr97Sa+2z1+IsmeZKeK5ieR602r7YudbX1laV9lzyIs0+986qhEKNxmCIOF2yyaj0innHEDDnvvPUtb4YdY83fWTdeFmLx9C740Iur2IvNvOsc9l1q0jj0kYyEpLIocBgrJsCHx55+QYa9gw75BdF2+m4f87TZa+Syh9B5x6.GbxVdeAEIuP6jEHaZAtliesedlkowsbcbb7dVchOPOIyUGY9Pne+9pPgBpXwhS7CAa999o9gh4puhhhFoD5i64k0qfNMo87GLXPt99m2WvPVk2kfaRWP4rdXyh9BVx6RXmUyxwhSyorSeM2cROfIsyeXe9qwUJ8rd7S2tciO1sPgBG30qWudwElKYozCBBTwhCqD6vvv3LA6Z68j1EbdhOPevfAS7JlFGSXuYi8jJYkY017At48H460j17Xekg4ozNglYGt7xhtFHRyh5BNRqp9.P1O+QZmeHYU1aeg2SpVcSVfMyxXxLlfffSjg1SyI9.8jUkRxpEoe+9GHP19CwIcAAlOPOJAB1suxh9C6rVB8rVkrYc8eQeAAGklDvtJ8VzU49wUeH3nJqmvdQWCQYc+6z19m2e9tnO9cVqAyiZafmb429byRZr4CiSTTjFLXPblfY+N6RveZHb+Def9QUud8zfACT850kzvSbLXv.0oSm3u52uu1YmcTPPf51sq5zoiZ2tsZ2ts50qmBBBzcu6ckzAuvByeKscny5IjLK+SRZcJizd+SaGzpUqlomeVe7zpAhFMZL0GOqe9XNPN4IdRdhio87yhEcePHq6+l0k+79B1RSVW+y6O+y512zd7rd7icSVNNIKPRxpcOsyuUud8QBrS1onmDyws6s2dpToRpb4xibrs4h1sO+yfACNPSvk20P5g0oh.cSUjX2FHCFLP850S0pUSau815l27l5V25V51291wes6t6pe5O8mpd85oc1YGc26dWc6aeacm6bGs6t6pd85oNc5bfdudxdwt8lH6GaVj0CnyZmhZQaV6kqSRZGbl0S3OqLsAmYePyAzYc4OMY8BxxZfPdGnk1IDSKPHuufmr97Sa6WZq+os+UZO+E89GoUChkJUZh8vcOOuTO9tb4xwA4EKVTkJUJtWq666qUVYEUtbY0rYSs5pqp0VaMsxJqnlMapxkKG+6m4LmQKu7xpXwhiTR7d85E+5eZn40NUDn2oSGs0VaE+0Fargt5Uup1byM0Mu4M0MtwMzUu5U0MtwMTqVsTud8T2tciGVai6fByIns+cy2GW0.MoeNu6TRoIqUIWdOrXx5AAYsDvYsJeCBBjuuuJVr3Hmv3jRUvk2kfKqxZfUZx6KHIuOIddG3lU4cm5MsywNKm+JYAtr+d+98Ovyw9+ud85pVsZpYylpd85pQiF5Lm4L5BW3B5AdfGPW3BWPKu7x5bm6b5bm6bwWff48dQe7eRyk.c6w.tgojrlUX6poNYUYDFFF+A3d6sm1XiMzm7Iehtycti93O9i0su8s0Uu5U0G7Aeft5Uupt4Muo1c2ciaejj85P6SzdZ3ppvQWV6C.oIYypXpFvZ0poJUpnBEJn986GWRDSU+Y5uG4cfxI8Geba+r+Y6i8G2imlE85Wdu7m2A9GmA1iSV2+vzw0lziml986OR+yJLLbjQQUgBETiFMzxKurVd4kiC4ezG8Q0C9fOnd5m9oiebSPuceyJHHH9mGLXPbtm4mmzEEDFFp986qJUpj55fs4ZIzSVk0lRAuyN6nkVZoQ9e2YmcTylM0d6sm9vO7C0+2+2+m1ZqszN6ri9jO4Sz68dumt10tld228c0fACNvIMMkRxbwDIC1MeXdZuJqwzk2A51uG1MCS4xkia6My+icauYdNK51PcQ+3DnOcDnuXCzsO1dbM4pImwLDoMcRtpUqppUqpxkKqyctyoG6wdL8XO1ioG8QeT8vO7Cqye9yqkVZI0tcaUqVsC79ZB562u+HEBvTH3i54Mxbft8UfHcvgyyctyczpqt5HCSrabians1ZK8Fuwans2da466q81aO8+9+9+p+8+8+c8we7GKIokVZIsyN6D+5MtNnTx1XKY0keb0FqXwHuCzM6uY2gHMWnpuuupToRb3tz853LIaRmr79eZ9wIPe5HPewFnOokUyOaZCcy4.L8mKy4ELMEW4xkU0pU0xKurdvG7A0EtvEzYNyYzm6y84zUtxUzxKur1c2ckuuebG40TJc6LS6ywbTB0ybWzydXAjbigjzpqtp50qmJWtrdy27M0O3G7Cz1ausZ2tsd5m9o067Nui9O9O9Oza8VuU7yYokVR999pa2tpYyliDlaVgsGKg1NEzk.voHIOof8A1lKVzdHPZervrLJH.vhicM7NtuatPc6gDscFTPPfZ2ts1d6sUPPfJUpjt90ut1XiMzpqtp9vO7Ckjz4O+40W3K7Ezy9rOqjFVvV6pS2z7blBBXFUVG1dQ+bsJ2MUIt8rqyfACzst0sze8e8esd+2+80i+3Otd7G+w00u900y+7Ou1XiMjmmmpUqVbUSzsaW0sa2CLq7XW573UfDUGpwjlr.fa43nD5S500d+yhEKFWZcyHiXdzoYVzk.cQWBrzrnW+nD5mtKg939erOmQoRkFY9OQ5d4ZAAAwE9zz7uc61MdHOGEEEWJ8xkKqqcsqoKdwKpeqeqeK84+7ed0rYy3py2LF3smwSOJEHXtEnaVnrqB71saq23MdC8M+leSUudc8TO0SoxkKqW60dM8O7O7OnvvvCrAybESUqVU0qWW8506.cZA6E4jUqIkP+9KGGA51g21Wkt89kdd2qyxY2KXoSwQfdVd8IPOeCzsCOMe29bF1GqaF9Z1SdY28t2MtuzXp9b6bpNc5nlMapO6m8ypqbkqnVsZo28ceWc1ydV8k9ReI8k9ReI0rYSIcu4JESI2W3A5lM.CFLPe3G9g5m8y9Y5e4e4eQO3C9fwKje2u62Uequ02RRCmTPrqtRyFDS6PZ5z.lWWyW1U+goVAlVIof6JuCzMW4cx1N2NP2t1fLsml4Jsy5DOwhNvZQeB6zrnW+HP+zcftYYXR+tISJ4w6lW6lMaFWh8986Ox4ILUg9VaskJTnfdlm4YzS9jOo50qm1byMkuuu9xe4urdtm64zktzkjzvlv1TnX6edVk41P2TO+lUv986qO5i9H85u9qq27MeScoKcIc1ydVs4lap+t+t+N8e+e+eqFMZn50qqc1YGUtb43YoMSGLv901dlBxdip8b1tzAa6Cf4Ay9SIqh8jS9PRCO4d2tcUPPP7vZC.mbYNd192sMXvfQl84rKstuuu1d6sGoPllrPyWAAA5rm8rwSxYkJURW4JWQW7hWT27l2T+8+8+8pSmN5AdfGHtJ3yz5yrTBcyIxLiMNyzjmoMBs6Z9+S+S+S56889diza+9leyuod0W8U0latYbaL54MrcGSalDB3zr0VasQNfWRibAo1ibC6KVXVsnKgZZx6Rnk1yO4ntw98UJ6k.NskuEcI3Sa6SVk2kPOOZiba48mO850SKu7xpc615l27lZ0UWUO2y8b5BW3BpWudRRZiM1PO6y9r5O3O3OHd3c2oSGUsZ0Q5XblZJbZkfO0.cyvRKLLT6s2dwuglpXvLzct8susdwW7E0m9oepdfG3ATmNcz4N24zK8Rujd228ci6se0qWOtSCY9.CvUUsZUUnPgQlg4jzHs8tw3N4vhNvl.cBzmFBzm9+io2rWsZU0uees81aqBEJnm7IeR8zO8SqM1XCs1ZqoO9i+X8XO1io+j+j+jCresYxuwt1pSNbwiWdlkRnu81aqkWdYIM7JGBCCG4lFxO9G+i026688zsu8sU2tc0ku7kUiFMze4e4eo9O+O+OiaGby.w2tcxoWnCWVXXXb6pWoRk34YZijSjEIaFoEcfMA5DnOMDnO8+mhEKpc2cWUrXQszRKoVsZoae6aqyblynqbkqnm4YdFcsqcMUsZUs4lapyd1yp+z+z+Tcm6bGc1yd13g7sQZ2RWSMPe2c2UMa1TQQQpWudwsKnY1e6e8e8eUequ02R850Squ9557m+75m8y9Y5u4u4uQat4lJLLTUqVM99Nq83GeRWkAfqvTKVlP8RkJMRo0sCzS16ZmGmPg.cBzIPexx6OeJTnfZ2tsFLXP7PyNLLTsZ0Rc5zQO4S9j54dtmS6s2dZvfApUqVJHHP+4+4+4iTk5i6VG93jZwia1rY7jGSkJUhKscPPfdgW3EzW+q+0UylM05quttzktj9I+jeh9Jekuh9jO4SjmmWb6kaFidc61URJ9Db.trj6+2oSG0saW0ue+CLsEaeeHXdbxV.rXs2d6oxkKqkVZIEEEo1saGWyzQQQ5G+i+wZiM1PUpTQc61UEJTPOzC8P52+2+2ONqzba91LRv788G47G1l41PW5d2cYd629s02869c0m9oepVe80U61s0ku7k029a+s0K9hunJTnfZ1r4H2wyLOeOOu3dBXxRk.3ZLyQylC9788GYbqlrWwZBxm0iKnD5TB8ogRnuXKgtYXulbbtaJPa8500O4m7Szu8u8ustzktjFLXft5UupVas0TmNcze3e3endxm7Ii6XbsZ0Jt4tG2LIWpkPuPgBZu81SgggpWud567c9N5ke4WV27l2TMZzPEKVT0qWWe0u5WUu3K9hpToRpQiFwWEg8MNdS0MZ5s7zC2gqyN3vbbPPPf50qmZ2tc7wA1yDUlC5oCiBb5loOi0qWu34VEy8.9vvP89u+6qm8YeV8xu7Kq28ceWUudcc9yedUtbY0qWO8RuzKo24cdGIM77BlRsKM9KlK0RnaZT981aO8s+1ea8Vu0aonnHs95qqUWcU89u+6qW3EdAciabC0nQCUpTo32TS6lals2LqHldsWVmzM.NoabyUBl+tzA6E7lRUZZyrzlXInD5TB8ogRnuXKgd61s0RKsjJVrn5zoS7ropmmm50qmpWut5zoiVZokzFarg9re1Oq97e9Ou1au8TPPf1Zqszku7k0W7K9E0u7u7urjFVffNc5DeSdYjkm1saGUsZ03UNSoBJUpTbQ5+4+7etdgW3ET61s0Jqrh7880Jqrh99e+uu9G+G+GiG38l1KzdF0gdwNvjY53KUpTQUpTQkJUZjNKWPPPbOi2761yrhl92hwjBzllrFnNqu1KhGO4+y79D1Y84m0.u7dl3KMY88eQu+UdGnOKO+Z0po1saqs1ZKszRKoegegeA8nO5iphEKpd85o6bm6nACFneueueO8K8K8KMxTDaxNNWwpUqpM1XCclybFUtbY466qACFn81aO0nQC8Vu0ao+1+1+V8DOwSDOKX8HOxinm+4ed81u8aGGhKM57gK.Rm8MmAIEWp7jyNUCFLPddidmbyzAUAvoSl9YVsZ0z4O+40cu6c0O9G+i0N6ridlm4YzfACT0pUUsZ0zK8Ruj1YmczW9K+kiuf+RkJoVsZIogywKEkjdnG5ghCgu8susVas0TwhE0e0e0ek9o+zepN+4Ou94+7etdlm4YzFarg9i9i9izFargjFVkgR26poRNza.vjYJ4soszMCqyJUpDeyfvbaZzdpkLHH3HMWOCfSNZzng1c2cUPPfZ1ropVsptyctit5Uup777zm6y84zVask51sqJVrndkW4Ujmmm90+0+0G4ddhY3jWzzF4dddZmc1Qqs1Z55W+55q809Zpc61pZ0ppXwh5W8W8WUu5q9p5u3u3uPRRqrxJiTEfG0wQKv8yr6ErIuSBFDDDOzNGWMgQyYAb5VwhEU0pUUmNczcu6ci6TbsZ0Ruy67NJJJReguvWPW6ZWSddd5Lm4L5ke4WV6ryN5242424.SMrEM8t1ACFnkVZI8i9Q+H80+5ec444oUVYEs95qqkVZI8U9JeE8C+g+v3RLrzRKoM2by3WrwElOqsgGv8yru3WSo0sGtml1KOYsfYFwH.3zo6bm6nUVYEUsZUsyN6DeSJyLyR99u+6qFMZnqbkqns1Zq3aXYu5q9p5Lm4L5K9E+hRRwkxuX0pUiGq4eiuw2Puwa7F5bm6bwunEJTP+w+w+w5S9jOQqt5pwcDmqe8qqJUpLwRlSfNP5rm8mjt2PVy91Fro52MiocSmhy76.3zqNc5D2wX62uuZ0pkJUpjVYkUT+9802+6+8Uud8zy7LOit0stkpWutVc0U0W6q80zt6tq9M9M9Mhm2W761sqZ2ts9pe0upd8W+00i+3Ot788UqVsT0pU0e1e1el1byM05qutt6cuqBBBzZqsVburytZBSFlSUtCLcS6BhkT73UuUqVwC+SS3OiScfS2VZokT+980t6tabemwteyLXv.8Y9LeF8u8u8uo+q+q+Kc9yedIM77BkJURuxq7J50e8WWRZ3E9WoRE87O+yqqd0qpm3IdB8we7GqBEJnKdwKpezO5GEeObcqs1Rqu95JLLTarwF5QdjGQ6ryNibBIByANbFW+OwzY3LGX2qWO0oSm3a2hI6Y7.3zofff3dwtYNaQZXVpYLq2ueec9yed8+7+7+n25sdKszRKovvP8POzCoUVYE8M9FeC8JuxqHIohu1q8ZwsWdTTT78t01saqKcoKohEKpff.Uudc0tcaUnPAUudcs0VaEOK3X21dl19ybBojCsF6veyrm03NolgozHlKPH42SqJGmkwgXVj0lTXVFGp44qed+9OsNJoYbnlk2+4w3PMKO+zV9r63ZIGVmlpNeZu2lImovvv3axClwrtY9e1Tc71uWi61y5zVGRtdXdd1CcN6uaOeSLMoM4Qk0s+o0w.SNu3Ou2+KMocymZV2+YRqClZHcbamlkOeRa46vdyyxd8Is0sY4wmGyCAGlmexk+rd7uYTrX9eSdbjYzqXuep8q4VaskN6YOq52ue73RuWudZ0UWU28t2UMZzPCFLP+fevOP+J+J+Jp31au8HmvPRwsYW0pU0u4u4uodq25szm7IehjT7UGzqWuIVE6CFLH91r5pqtZ7Bo4jL1mTvTJCyFujeYeAAICykx9IDx5c6s79tEWVOgRVqV1YYG1zd9iaG04U+qXQ2GMNJmPwd+3z97I4cjMy3Q2zN6UqVMdBgxbrhc.+rr++3BqMe279OoGOss+YMPYdbB8rrOxhtlFMa+lTft8vV7nLowj11lYY+yY88vd+E6BjkkK3ZdGneTeMLeYNly7UqVsNvia++X19ZOhwLCO0BEJnqbkqnO4S9Ds0Vaoye9yqKdwKpvvPs4laFOcx1ueeUnPA8QezGohEJTPm6bmSc5zQ6s2dwAuc5zQddd528282UOzC8P5Mdi2Pe5m9ope+9wu.0qWWsZ0J9jMlovxxkKG2F.6t6tirhm7jMlwOmInO4W12Q1F2G7Y8C7zlbNx6cnRSVCrx5TGZVuJ6Icvp8EvsHk2mPXbkR192S6Dhl.W6sylwepuue7wGIOYh4mmk8umVf83tXrjqC4orFnmb+uwEtjmx5EzX+Yy3VW6zoS7OOtB7jlz9eMme9n97mz+u89US6BQx5E7klrN0+ZlFyMeNm7XISUoaJLq4XWywclaPSlujt2wjAAA5C9fOH9VS9S8TOkN+4Ou1c2cUTTjN24NW73We0UWc3zj62467ch5zoiZ2tst90ut50qW7bHa4xkU4xk04O+4UwhE0a+1usdsW60za+1ucbIEZznQ7sCRIE2a8LmHpPgBwq.16ba9Y6SXMtNHzXuEwMGOYRZ6vl28h3iyp7NOd9G1GeZgaGkW+rtuPV+78vTk91AjG1S9l7XCyOWoREUrXw3oMVywSli2l06WBS5yI6de+3d74Yf6Q4wOLiE+wEbrnufxCSMbIcvk2o0jBRou+cZ6ej1EDdXN+x31laeKDN4iMteeRulG0GOMo87M24yRleY9tcahOtaOx1g3CFLHdBlx77qWutdzG8Q0C+vOrZzng52uut6cuqBCC0ZqsV7Pda80WWOwS7Dx6e9e9eNxT7dSw3CBBzm9oepjFN4xa1nu7xKqyctyIOOO8du26o24cdG8C+g+P0pUKsyN6DOM1Y+grYrxZWUB1sct8vyYbkfedTkOSSVKgdVe+mkatBYQd+7yZaDl0.8rt8Ou6iB12bIF22OJsgq8eyL4yTsZUUsZ0QlK3mk1P2tjpSpJ2G2xwrFHl0Z3ZVZxfoYZ2bOjx+Imm40w2SZ6s8q+39ex51+zJvyrXZa+StOWxeNsy+OOufuixquoFRFWf8jVWs+dxB6Zt2ou5pqp50qqyblynUVYEEFFFeOQuZ0pwGyegKbAUtbY0nQCs95qOrD5EJTPqrxJpc61wKf25V2J9tl1ctychmuX62ue7zPmIfeu81S25V2R27l2T23F2Pe5m9o5l27lZ6s2V25V2J9JOrau.yJkcm94nTZorFHXWk9GkmeVk2kPOsq.Oqk.+vbBqix5RdWB8iqKn5vVxiwYbOGSUuatXYSSdYJstoDBSRxN8Vx2qr1F5Y8Dtyym+3B7VzAByZevYRKyo0GiRSZqeoUfmCSeHZbqCIqQ1j+7htFflk8ORdLf8uau8abmKzLAxznQCszRKolMapFMZnFMZnxkKG+7McFVyD8lYrnalqXFLXvvor8FMZnVsZohEKpFMZDeygv22OtM0MuvdddpSmNZ6s2Ndxn48e+2WEJTPkKWVW5RWJdbra1PXFGs6ryNpUqVwio181aO0oSGcqacqCTcC1syfc0OXugXRmnLozNgSVG5OY84m0.0zj0pLKqcZlo8Y2rHqc5JW13NonYVkyTqaocAcoEnOoOylTaqOokw75wSSZ8x8ii1QeZlkK3dZK+GkKRwVZA5o0GbNLc51wsLlVm9Kqsg9wQMvMs2OysG4xkKqZ0poZ0popUqF2rzKszRpZ0ppd85wEtzzO0L8l8Z0poJUpn50qqlMaJog62Tud83ZgyzIzK544o1saqd85EOD0pUqlVZokjuuu5zoipVsp51sq1c2c0RKsjN6YOqZ2tst0stkd3G9giq57d85oVsZEGx444EuCQiFMzxKubba9YJUdiFMlXanKcvq.ZRsk3jj2Gvl0W+CSfXdHqa+l0pLNsueTe+y51uztfr4YMXLt1XaV19YNVw7ylSjapxd6p5y7ZZ9+m0K3bRA110p13d7zV9S6ym7dXmZ2jdi60Luuf+rt+ax9fg82kRe8Kqe9Lu19LKUoddzjAos9k1x+rTCK999pToRiT6XllVd4kW9.Mmr8wp12iFBBBhmg3pWud7M9LSAsM4kKu7xwmSnZ0pwE9tb4xpn4MwLlVazng50qW7sQUSw4MkTOHHH9ludiFMhjJngA...GUmDQAQkOohmmW7c8E6ODLCN9nng8Zutc6p81au3GeyM2bjSNYtaSMuBxx6dodZC6mz1gYdMNUOpO+rt9mlEcSJjUyyRPNt1UKsk+rdBqrVk1Y0rzKuyypzOuGVqo0jDYUd2GRLlk119nHuuf7z97Iq0PYxQekcvruuebyROo1L2NaztlyruP.6KP2902DfaFQY1Uut4+yLZxjFtuPwYspylDSazYd9lgtl4MzT88lqDwdg1zC3Mqf1aTLqTY8D9YsSsMqGPkWkfIuKgYZGvl1qeZqe48D2QdO8mZNf8nJq0vQV29k0ljHumGCRqF.x6i+mWGeMtpFeVtf9zj28Bc6ZScbOu4UeHYRxZuvOssuo0jAo87SNOPHcughpmmW7MMISFlIn1jKXlv1R9ZXeAS1kX2N7eRWrRTTzH4V1uVEMWE73lwglkqP19wMqH1qTlENSURj7mMskfoS7jbCSdKqWgeZkvHMY8DtYsSuk1xXdWB379DFYUV2GLuqR4r94adeAAy5y+nFnm2O9rLSzMtlJzbh5z5ThoIq0v2rr+SxyWYe9rE8wmyRfaVd9Gl8+SFLm74ZxPsaxqM2by39BlcmC29VlrIm8vdrp8mWlP9h1CwkCyJpgo8vs++sGj81qbIaKPSGvytZ6St.tnumOOqaGlzF6YoWRlE4874sYzMLIyxI7xS48qedeBs7tJwWzMISZu+lyeXurbXpx8r93Y8BpRqF5x6dIeZl0KnbQUk6YsIsx64QBSmA298yDHGFFpVsZMRm5ta2twSOq1+e1c56jMqroevXXuMaRetX+3iDnaOQTj7EXV9vLYGLwNX1yyKtD3lNIPxdcp4+O4PZKJ5dSJMYQd2FaSpZTlkm67Pd2KuSabnl1IrNs2Kzy5mg489eoIuaixzj1quoJimTfXVk28AES+KZRkPOqWPXdGnl7701OmYoTiY88OqE3Iqe9dXO+jIiytT1RJtZysu.UyXGOYeCytJ1S1t7Iq9dyq8z1Gaj44E6dFq8NgiqQ9GGyJUx1DXb6Pa2YBLKvIuZD6GadLOom0q.bV1gKOKgQZu+oMN5yZUtlVazkl7tDf4srtOXV2+Jq6+jlr99mlY44mk.wrt+SZ0vUZGeYLtyAZ96YQVGG3yZMnkbYN44zNpx5meYsMxSqIONLWvcTTT7szTSIsM+8Is+qYjiMt7Uogqe1g6lPc6QuhMy6UxLFSAfiqx8jKPYopls+x7ARxq.wtZ2s+xtSBLOZeziqpjy90wrAeVV9y5I7SqSak0SXm01nOumKly6KHHuG1RYsDH4cU5m2WvPVuf3rJqGek0doeZxZfUZVzA5oIqcpszN+yr1o6rqEay5juuebUxa2WzRNQpYdNIaBZSMSaWk4RJNPO4L83jxZs+8h1+yi6eHMi6lGg8ua57aiqW.Z2A5r6Db1a7x61HMqmPabavOLgLYsJWy5vdJuOgcdO08l2Uo+htSAl0pLLuqR+rxtsDyiZ3JMY83K6kijm6bVqkyoIqkP8vzo3rY11unmZky53DeVZxjzd8SlsY+XlRea2j0l8YLA9i6hiLaWsaJ5jcj7wsu23VerK0dQy8r7pUqFO4vXO+qmVixa2l2S5+abkDebOujskv73.hiqSXcTWVy6CXVzU48IkoNyip7tDhY88Oq0vyIASqOmbZX8aZG6m2Wvw7bTPLtR.tn2+OuO+wrb9yjEvztczMUotcIsMUMu88Q.61J2tD31uGS5Ky5gcmD27bCCCiuOo2nQC4OoMXS5J2...vIKdddx2LgtrnuRL...b3X2l99lY5F61.HYOoC...m7XBzKTnf7Mcphj8rQJwN..vIW1E5tPgB2qD5iK.mRnC..bx0HU4dx1P2tJ2A..vIWiDnOo4hX...b5fmmmJVtb43YjlhEKFO2DWnPg3YgH6wDt49zZxwIdxwLm82kzH2X2G2yaZiAurHqii2Y84Otwv4rHuGmpmze+SyI8ku71h9Bsy6IlnS5u+m1cRe6Wdu7Mud9lbO6bIy8iboQyHsG65SZNZwtimOsuLu1F1iG8jSc5RRGXpnIYuaeRAs1CL9ixFnE8NR..ttS5mm8j9x2oM9iqD11xZInI.G..ttoMaol2rpA860F5Iqx7w8jrexK5p6E..XQJ4P9196GGu2Fdddp3jJgt4uaOowOt1PeVKkddz93..XxVz2KGRyI8kuzj7dVRx+1wEq1V+dS164QIzI3F..2OXbA7GGL4wES1A3LOn42mm8B8EU0R...jGRlEtnpA5Cb+Pebye6I6Y618v8Ycglfa.fieGOUocnj7OBe2spx8E46uY6TwvvPszRKoNc5n0VaMMXv.444E+cyXcKHHH9mMso9rbkHIaq8w0N8yxB7zd8WjlzxWZMeQd+9a35u+o498wwdVcR4DV2uJqq+Y89IdZhhBj7BkhhN7eWRdd9xDtO9W+zVBls6G7iqfpi6uOomu4mmVMUa+ZNO5z31KeiatawbuPuSmNpToRJJJZXUte+7sO06WWuA.la7BO7eOJeuXi6GbfRnOutRB..beHBlWXRVi29lgiVx+AB5A.P9gKDHqrmFZi6k62OGdeRuMfA.N4ZdDJe3mBwwPIqxc+wEleb0gt...vQiYzlE2F5RDbC.fihrVBcJcdVbfNEm4AteMTmpbG.XQfv74shAAApZ0p51291JHHPEKVTgggw2OzS69053B7rGWdyyYZtwIqAxoMNMy5q+h9BFVziC6E86eVcZe4GSWVO9LsG+nbKl93T1OG7739M9j2Fk9wOS+72oMMlOuN91drgaeeP2761+s44LIWoRkz1ausVc0UGNtzStfAfiOK5K3CYCyiERG8YJtPk0KHvUj0iyGYtbedc0J..39Ig6OIwnC+2gjNXX9gIbO0d4N2ZSA.P51OLWQGsua9BRZz49kYMT2zjNS7tsF2Iz.N9PUte5FmmzzF3GsaNKRZ5g5Sa+eGXFpaZ8EsCy85j3Rnm7IRIzA.vgS3Q36YrMzcrR2OtaDKowtD5RLNzA.vQVFp1bGnD1Y0zZ+7iRIzKl7AM240HjGH+Qsgc51o6lLITxK3d+Zj8sxTSUiKIuAZX6dOPR6e6RUCt2SySxKxWQdgGpuO70w7kU3dj29+tujJHo8+83kOOm6hAlW6mTra2tZ80WWevG7AZ0UWM99bt4ddddONJG2XzyVdONvmm2ubyikuzrnGG6K52+zrnOgZZK+Y89U8hd6iqeAIK58+SSl196EH40UCq16BRp38BMi7k7jBC6I42U9E5JuBcjWgtR9s2+44ofA0TnJI+HeE5Edfu6E5M1+tejujWW44umjW+Dg0EkhJHEUVggEkmpJOUQJrhTTogeoh6Wvyim8+r6aY1is7zliVrqRb6Lt8uynovvvQ9dxOOKTnP7MdEyywbNivvPUoREciabCUtbY0qWuQ6Tb.3jk7Nvz0CjQVDJO+ACCwKrsh1+K4uih71SQdRQdUUnJMwVJ2r+0XebuApfZeuZIvTp68CyUTE4opJJrtT3xxyqgT3RRg6eAGQEj7l9DSyhxw0wUi89g9jtEpB..GUjutWqtVXzpb2av9kftkTgskJtkh72RQEtkh7ush71UQ9cjW4.E4MXBuAojkDUVQA0zvpT2Tk9gwO1vRi2TdgqHE9.RAmQJHX3+SXS44a0r.m.bXqc44ISNdQ6hyauPPnN.fKye+pud+eNtp1C2OPuuh7ZseIx2RQ92X+utkTgcUTg8jWASapOASKGIrhj2pCWF75u+W8z9y9LRgUUTXSov1Cax9nxxKbo8ec2uZ48jVjg5IyKOtGkXG39gtoN4oD5.m7j2sg6htM3wh19kPOZ+1uNVjjWOEp1JJZaIcGE4soTgaHUbS4UbG44MX+12tvje4mVab6GIOuvgg39ck7ZO76xTE7UTX+.onJRdcjmB2u53qHE1X3O62dgO70F2wPGWYn1siuuu+nS8qGmKH..3DfCDlaKPRAJxqmhTOI0QddckmWGMrjwE0zuAoLs7j.I+NCe9dsG9ydsUbOn2afh77kTS440c+2+ACC1UnzztPhiYiaRY63LKMtD5RGtAxN..bEl4h8hZzP8gCUrB9UUjeUEDUUQQUjhppnvxJJpph75JOEnH0chu5QSMPORQwsYeWIY9JPlgrVjFHodJRskmeaI+cj7WRpPYovZm3Jc9wcAhG63PebCYKJoNvhGU4NxOImTXL8dbS6oWRE7qqP0TQQqpnvVJreOoPOEFVSpv.EEUPgdStD5SuSw4Kuv8aCeS6m60WwiK8nJRCVZXmgK7AjBZJEUSwMSP73XewZQVk6IeeJFDDnUVYEEFFptc6plMapACFLxXeaZeYOt5LL+cya3z9xdL0YOV7hhhhu+reXVgR5nd+LddchpE8IjWziSbSa7LtkmiivfE8Ell00wrNN0Wzu9GWR947QcpyL42m04whSk7BsBPC1uyoYFK5EkhpnfdQJxeY4UHTE8JonnlRQmUJXOEFDLbXjE2w5Nnz1+xOLX+1YevnWbgoWtGzPdQqHErpTvpxKXMovlRgMFlynN6263OZx5meiq50m17ydRokuNK50qmZ1r4vwgt4EE.39MS5bempCpOTr6k51kN2WRk2+eYk86U4Uk7ZH42ZXmQSQxWMGF9dT3EJEYZK98Yp5+3gsVEEEVSdQMkBqJEUO9BHhhB1uJ8WLkF9j19Hwsg9jbRaAF.XdZRyPjS5wcS12EzLsodg8+ppFNF0Kse0cuz98H8dZ3DOSQ4cTqxcu96GnOX36ejY1pq38lQ31+mihJJOOoH0Sd9ARpkFNz1LSSrGONINrtsKMewIUESmjVfA.xCSpp0m0o94S+1epV8.8X78GK3wOtuTPIIUUJzLmt2WQ9QJx+n1N1g62w1h1+hGJZEpWRiLcvpgCocOOYMkuNsdm+7w3xCOokMZO4vcfgslDg5..NuHeIUQ2K71H7d+Z7MQEogAsd6Wk2Cm7YhTu86I5i2TufnHeoAqnQlk5hqx8gUdbTjo.mQRdgJRg62146+6QA53rJ2WTSfLSyHA5S5e5jxBK.PdYRmmy8KYtz8BPMBS7k1eVY0daj0cBsnHEEVTQS4Nel2z5TbQEG1t310NvAdsFtbXJctjuhh1ui1F4qgg44aOc+zPama9p3z5QcmzVvA.lmt+rMyM7uWUa6seOc2afF81jpjh1ebgGOAzbuaeodp5TmL3F1F2S48Wx58Z+1u2KTwA0we93ue8HreI209ytoGS27hNolElrWwO8wDF.fCaRsU9rNr0N0K06q3Vk90KTw2qx2+VipueQIOe4GML6N428BiF6e2OdyZjUX99220iGe7CqR860o6rufhgY4lpj+nxUt.t3.8ACF19GUqVUMa1T862O99r5d6sW7Svd9d2t8CLia7fffQdCF23X2vdbnGDDLxiYe+Web2eXSJsw4Xde.YV2gH45+j94iZIIVzq+S6ym4wx1I8CHWzABos8YQOOFjli51uY84Mo8OOoWxLirs7EHod6+ylRiGsencwwNKr4Y0ix878UT3vdntYoH42877jez9UTehuKIEYe6OM9hKJD+27St6Wjc3tj+A9GR7uOmm3jNriSby7qxjtItLKySJkKWVEKVL94X94Nc5HOOO0uee0nQC0oSGUrPgBwKbW6ZWSW3BWPEKVTc5zI9Fu9IYmzOfCXQhiOlt6629L1IkEy8k7Ya3f4se3qW7ua+cuI72Mr29a89Miu2mDjmW7WPPf51sa7jtVXXnBBBT0pU0JqrhZ0pk788imD176zoijjt3Eun1c2cimYu5zoipUq1beADGdiqmUde+Ih..NAZddN5hEKpff.0ueeUpTI0rYSUoRE0qWOcm6bGEFFppUqpnnHUnPA4alZUuvEtfJWtrFLXfJVrnJVrnLUGOV7NIONHA.teTdet3vvPUtbYUsZUIMrD6999wSI56s2dZkUVQUqVcXyaTpTIsyN6nZ0poUVYk3RoWudcYJ89IYoMWweZWxfbB1wggqe7QVw1GjU449NsZ0RkJURUqVUc5zQ2912Vc61U0pUSqs1ZpWud5rm8rpPgBJJJ5dMZQ0pU0ku7k0t6tq1XiMT+98UylMmKKTHaF2NGbxF.fStlGmitZ0pJHHPc5zQEJTPqrxJpd85Z2c2Ue3G9gZkUVQm6bmSR62AD61sqZzngjj9LelOitvEtf777zVas0A545332zl5AITG.XwYb8d84oZ0potc6ptc6p50qGe2Pc2c2U862WOwS7D5Lm4LRZ3H1vuRkJx22Wau81x22W+h+h+h5JW4JZu81SezG8Qy0Et7.UYFvjwwGSGaePdXdsuioGtaxou90ut9fO3CTsZ0zu1u1ult3Eun788U+98kjt2DKiI4uXwh5xW9x5Lm4L5N24N5Mey2Ld7xUpTIUrXQUnPA0oSm32L6E9IMlyMiGOSun2zt.AAAiLdzS9bWziC1zj1xWZC6uzFm1488q5S52O1OsONpSSV2+YVFGqYQVOwTV1+eVd+y55eVO9JqaeLu+SZdlHqCa34w7jQVj08eSSxLhzt64cXe+M4a14b14T1OVxkkff.UtbY0ue+37MyXHOHHPgggpWudwiyby9BAAAwsIdkJUTTTjZ0pk1ZqsTgBEzku7k0S8TOkVas0heuJUZ3sTVun8WJMKTEJTHdAsUqVpQiF5F23F58du2Se7G+wZ6s2NdvtWpTo3ELy2sWgMq.EKVTkJUJ901LYx666qkWdYUnPAUpTIUtbYUoRk3Kbv22W850SSio29MIo8A5o8SXkl7NPLqqeo87y55eZiTCy9jSxI8.0rdAAos9m1mOo85m1wmYMvJqe9Lum3QNrLAl10Hfcfwh9BxRSZ6ej1m+YcjTMXvfLEnmF6BhZW3zACFDOFwM+rcgS62uuFLXft6cuab9nIv2t.tlLW6sSEKVT0pUSkKWVsZ0RAAApVsZ5xW9x5JW4JZokVRRC6g6llKOd82DnadSrmQ3RtAyL12t10tl9nO5izMu4MiKEooj6lEXyJPoRkNPXc4xkiupjJUpLR.ex2+jKvIk1UPl2SLNUpTISO+rF3k0W+79BJx62+zd9Y8DJoE3k2aex59uos9m1ELm2e9k00uxkKO0GOsyOrnCLKUpzAZ+U6v7rt8IuufkzV9LUE7jj19moI41rj+7r97mjBEJLRAVM+rcHd+98Uud8TmNch+tInuToRibA.1O+vvv3B7ZNOi4+wjEdgKbA8vO7CqKe4KqkVZIEEEE+5NNwA5lWLyUQjLX07BYVfLec8qeccm6bGc8qecciabCs6t6FWUAlvZyy222WkKWV0pUS0pUKtcAJTnPbfekJUFoJHxZI.x6RPk0SHl2UIXVW+yZf5htJwy6.+7tIQx6ZPxL9VmjzBDS6BdxZU1l0.kE8ErNqO+IUB8EcfdZRa4KsK3Zd1jBi6mS67yooPgBwYcSJP276CFLHtj4l++81auQ9+R12LL+uCFLP999ZokVRW3BWPOxi7HZ80WWm4LmYjywXG3Oti87BCCiRVu+lMxEJTPsa2NtT0IMtqVna2t5F23F5F23F5t28tpUqVpWudpc61w+r8A4kKWNdgy9pULWPQZmvIqUY673Jrmlrt7k0.i79Bdx6kur97y5EDllz19j0s+oEXl0Z3IsS3k0pjOq6+rnaRgzj1qeZlTui1rdm0W+79Bly59WY87u1YIiKPOsZPcVZRI6Rnap8YSP7d6smBCCiKkd2tciaybSyVapZdyiYJzrmmmZzngVe800i7HOhd3G9g0C7.OfpToR76qYBdqa2tGHGtc61GX1b0avfAQlUrjWUXxqLvrPlrN+sK8tocyStgxdEtc61pc61pWud5l27lwavL+O862OdiRZkPpa2tS8wSaGlr1FNo89mlEcIHVzswVdu7kVf5wUUBNIYsMpSSZWvYVC7x6lLJMYsIux5wWYc8yTk6iKPeVuAfLM485WZOdZ6+MOO9ZbA5sZ0ZpO+YoI0Lgql2OSntIyxj+0qWu3BrZBsqVspJUpjpUqlZ1roVc0U0ZqslVas0hCys6Xc1M+rjzcu6cUylMiWNM0.fo1sOvxaXXXj4pblkMtl27YYCh8NpiKfue+9pd85o9dlmxZUBl0NUUdGnk1Erj0kurF3j1xWVufrrVk4oUBizV+y5ELl1Ebj11mzV9y55WV2+MqOdZKe48bow7Z++IUB8E8bARVufyzV9y5wGi6tgl82yZIzsuKmYeAVlRrWoRk3N0soFlMSUqkKWVqs1Ziz2vr6yYSi4BFrKQ93tvujK+dQQQQ1MPu4N2hz8Z+.yUMLN18r83WzwzSCMuN1Af1WIi44krMkxZuXeQ2Fs4caTmU44vtSZ90FiSRV29l00uEcurdQ2GMxaK5iuOsKu2+JMGmiBjw8ZMOF1biquMX+ZaNFxTSylZo17bS9dXmYZ2y4MuV1Yj850SEJTXla5kQ5Tb...3zoS1WdN...lIDnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vAPfN..fCf.c...G.A5...N.BzA..b.DnC..3.HPG..vA7+ySSm5KfIip+B....PRE4DQtJDXBB" ],
													"embed" : 1,
													"id" : "obj-2",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 6.0, 4.0, 45.0, 45.0 ],
													"pic" : "Macintosh HD:/Users/elioton/Documents/programmation/CICM/sourceTree/Leapmotion/distrib/images/leap.jpg"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 286.4375, 217.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 14.0,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 337.104156, 398.0, 168.0, 20.0 ],
													"text" : "patching_rect 0. 0. $1 54."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 286.4375, 427.0, 74.0, 20.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"linecolor" : [ 0.989051, 0.989051, 0.989051, 0.39 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 62.28125, 4.0, 5.0, 48.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 61.28125, 3.0, 5.0, 48.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.754705,
													"frgb" : 0.0,
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 78.0, 32.0, 402.0, 21.0 ],
													"text" : "access to the leapmotion image frame",
													"textcolor" : [ 0.999903, 1.0, 0.99983, 1.0 ],
													"varname" : "autohelp_top_digest[1]"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 3,
													"fontname" : "Arial",
													"fontsize" : 20.871338,
													"frgb" : 0.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 77.0, 3.0, 403.0, 30.0 ],
													"text" : "cicm.jit.leap",
													"textcolor" : [ 0.999903, 1.0, 0.99983, 1.0 ],
													"varname" : "autohelp_top_title[1]"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 3,
													"fontname" : "Arial",
													"fontsize" : 20.871338,
													"frgb" : 0.0,
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 79.0, 5.0, 401.0, 30.0 ],
													"text" : "cicm.jit.leap",
													"textcolor" : [ 0.0, 0.0, 0.0, 0.5 ],
													"varname" : "autohelp_top_title[2]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.754705,
													"frgb" : 0.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 79.0, 33.0, 401.0, 21.0 ],
													"text" : "access to the leapmotion image frame",
													"textcolor" : [ 0.0, 0.0, 0.0, 0.5 ],
													"varname" : "autohelp_top_digest[4]"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.763977, 0.775419, 0.803024, 1.0 ],
													"bordercolor" : [ 0.999903, 1.0, 0.99983, 1.0 ],
													"id" : "obj-16",
													"maxclass" : "panel",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 0.0, 0.0, 350.0, 54.0 ],
													"rounded" : 15
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 90.0, 268.0, 342.0, 20.0 ],
													"text" : "patcherargs @obj-name hoa.library @obj-desc \" \" @width 480"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 462.770844, 475.0, 74.0, 20.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 286.4375, 355.0, 171.0, 20.0 ],
													"text" : "route obj-desc width obj-name"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 1,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 1,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 1,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 1,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 422.5, 323.5, 295.9375, 323.5 ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 5.78125, 5.75, 353.28125, 55.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.5625, 23.75, 146.0, 19.0 ],
									"text" : "© 2014 CICM | Eliott Paris",
									"textcolor" : [ 0.317518, 0.317518, 0.317518, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.05 ],
									"bordercolor" : [ 0.235294, 0.235294, 0.235294, 0.2 ],
									"id" : "obj-28",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.5625, 23.75, 146.0, 19.0 ],
									"rounded" : 6,
									"shadow" : -1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"dstrect" : [ 0, 0, 64, 64 ],
									"id" : "obj-24",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 22.421875, 249.0, 199.0, 200.0 ],
									"srcrect" : [ 0, 0, 64, 64 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 13.5, 16.0, 49.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p basic"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "cicm.helpheader.maxpat",
				"bootpath" : "/Users/elioton/Documents/programmation/CICM/sourceTree/CicmLeap/cicm.leap/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cicm.jit.leap.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
