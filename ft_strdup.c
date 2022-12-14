/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aatki <aatki@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/13 13:39:32 by aatki             #+#    #+#             */
/*   Updated: 2022/10/22 17:55:51 by aatki            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *src)
{
	char	*depliquer;
	int		len;
	int		i;

	len = 0;
	i = 0;
	while (src[len])
		len++;
	depliquer = (char *)malloc(sizeof (char) * (len + 1));
	if (!depliquer)
		return (0);
	while (src[i])
	{
		depliquer[i] = src[i];
		i++;
	}
	depliquer[i] = '\0';
	return (depliquer);
}
